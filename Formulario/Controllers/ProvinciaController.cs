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
    public class ProvinciaController : Controller
    {
        private readonly ApplicationDbContext _context;

        public ProvinciaController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: Provincia
        public async Task<IActionResult> Index()
        {
            var applicationDbContext = _context.Provincia.Include(p => p.Departamento);
            return View(await applicationDbContext.ToListAsync());
        }

        // GET: Provincia/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var provincia = await _context.Provincia
                .Include(p => p.Departamento)
                .FirstOrDefaultAsync(m => m.ProvinciaID == id);
            if (provincia == null)
            {
                return NotFound();
            }

            return View(provincia);
        }

        // GET: Provincia/Create
        public IActionResult Create()
        {
            ViewData["DepartamentoID"] = new SelectList(_context.Departamento, "DepartamentoID", "DepartamentoID");
            return View();
        }

        // POST: Provincia/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("ProvinciaID,Nombre,DepartamentoID")] Provincia provincia)
        {
            if (ModelState.IsValid)
            {
                _context.Add(provincia);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["DepartamentoID"] = new SelectList(_context.Departamento, "DepartamentoID", "DepartamentoID", provincia.DepartamentoID);
            return View(provincia);
        }

        // GET: Provincia/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var provincia = await _context.Provincia.FindAsync(id);
            if (provincia == null)
            {
                return NotFound();
            }
            ViewData["DepartamentoID"] = new SelectList(_context.Departamento, "DepartamentoID", "DepartamentoID", provincia.DepartamentoID);
            return View(provincia);
        }

        // POST: Provincia/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("ProvinciaID,Nombre,DepartamentoID")] Provincia provincia)
        {
            if (id != provincia.ProvinciaID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(provincia);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ProvinciaExists(provincia.ProvinciaID))
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
            ViewData["DepartamentoID"] = new SelectList(_context.Departamento, "DepartamentoID", "DepartamentoID", provincia.DepartamentoID);
            return View(provincia);
        }

        // GET: Provincia/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var provincia = await _context.Provincia
                .Include(p => p.Departamento)
                .FirstOrDefaultAsync(m => m.ProvinciaID == id);
            if (provincia == null)
            {
                return NotFound();
            }

            return View(provincia);
        }

        // POST: Provincia/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var provincia = await _context.Provincia.FindAsync(id);
            _context.Provincia.Remove(provincia);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool ProvinciaExists(int id)
        {
            return _context.Provincia.Any(e => e.ProvinciaID == id);
        }
    }
}
