using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Formulario.Data;
using Formulario.Models;

namespace Formulario.Controllers
{
    public class DistritoController : Controller
    {
        private readonly ApplicationDbContext _context;

        public DistritoController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: Distrito
        public async Task<IActionResult> Index()
        {
            var applicationDbContext = _context.Distrito.Include(d => d.Provincia);
            return View(await applicationDbContext.ToListAsync());
        }

        // GET: Distrito/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var distrito = await _context.Distrito
                .Include(d => d.Provincia)
                .FirstOrDefaultAsync(m => m.DistritoID == id);
            if (distrito == null)
            {
                return NotFound();
            }

            return View(distrito);
        }

        // GET: Distrito/Create
        public IActionResult Create()
        {
            ViewData["ProvinciaID"] = new SelectList(_context.Provincia, "ProvinciaID", "ProvinciaID");
            return View();
        }

        // POST: Distrito/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("DistritoID,Nombre,ProvinciaID")] Distrito distrito)
        {
            if (ModelState.IsValid)
            {
                _context.Add(distrito);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["ProvinciaID"] = new SelectList(_context.Provincia, "ProvinciaID", "ProvinciaID", distrito.ProvinciaID);
            return View(distrito);
        }

        // GET: Distrito/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var distrito = await _context.Distrito.FindAsync(id);
            if (distrito == null)
            {
                return NotFound();
            }
            ViewData["ProvinciaID"] = new SelectList(_context.Provincia, "ProvinciaID", "ProvinciaID", distrito.ProvinciaID);
            return View(distrito);
        }

        // POST: Distrito/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("DistritoID,Nombre,ProvinciaID")] Distrito distrito)
        {
            if (id != distrito.DistritoID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(distrito);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!DistritoExists(distrito.DistritoID))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["ProvinciaID"] = new SelectList(_context.Provincia, "ProvinciaID", "ProvinciaID", distrito.ProvinciaID);
            return View(distrito);
        }

        // GET: Distrito/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var distrito = await _context.Distrito
                .Include(d => d.Provincia)
                .FirstOrDefaultAsync(m => m.DistritoID == id);
            if (distrito == null)
            {
                return NotFound();
            }

            return View(distrito);
        }

        // POST: Distrito/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var distrito = await _context.Distrito.FindAsync(id);
            _context.Distrito.Remove(distrito);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool DistritoExists(int id)
        {
            return _context.Distrito.Any(e => e.DistritoID == id);
        }
    }
}
