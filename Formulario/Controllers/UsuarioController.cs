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
    public class UsuarioController : Controller
    {
        private readonly ApplicationDbContext _context;

        public UsuarioController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: Usuario
        public async Task<IActionResult> Index()
        {
            var applicationDbContext = _context.Usuario.Include(u => u.Distrito).Include(u => u.Motivo);
            return View(await applicationDbContext.ToListAsync());
        }


        // GET: Usuario/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var usuario = await _context.Usuario
                .Include(u => u.Distrito)
                .Include(u => u.Motivo)
                .FirstOrDefaultAsync(m => m.UsuarioID == id);
            if (usuario == null)
            {
                return NotFound();
            }

            return View(usuario);
        }

        // GET: Usuario/Create
        public IActionResult Create()
        {
            ViewData["DistritoID"] = new SelectList(_context.Distrito, "DistritoID", "Nombre");
            ViewData["MotivoID"] = new SelectList(_context.Motivo, "MotivoID", "Nombre");
            
            ViewData["ProvinciaID"] = new SelectList(_context.Provincia, "ProvinciaID", "Nombre");
            return View();
        }


        // POST: Usuario/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("UsuarioID,Nombres,Apellidos,Documento,Mail,Nacimiento,Celular,DistritoID,MotivoID,Mensaje")] Usuario usuario)
        {
            if (ModelState.IsValid)
            {
                _context.Add(usuario);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["DistritoID"] = new SelectList(_context.Distrito, "DistritoID", "DistritoID", usuario.DistritoID);
            ViewData["MotivoID"] = new SelectList(_context.Motivo, "MotivoID", "MotivoID", usuario.MotivoID);
            return View(usuario);
        }

        // GET: Usuario/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var usuario = await _context.Usuario.FindAsync(id);
            if (usuario == null)
            {
                return NotFound();
            }
            ViewData["DistritoID"] = new SelectList(_context.Distrito, "DistritoID", "DistritoID", usuario.DistritoID);
            ViewData["MotivoID"] = new SelectList(_context.Motivo, "MotivoID", "MotivoID", usuario.MotivoID);
            return View(usuario);
        }

        // POST: Usuario/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("UsuarioID,Nombres,Apellidos,Documento,Mail,Nacimiento,Celular,DistritoID,MotivoID,Mensaje")] Usuario usuario)
        {
            if (id != usuario.UsuarioID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(usuario);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!UsuarioExists(usuario.UsuarioID))
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
            ViewData["DistritoID"] = new SelectList(_context.Distrito, "DistritoID", "DistritoID", usuario.DistritoID);
            ViewData["MotivoID"] = new SelectList(_context.Motivo, "MotivoID", "MotivoID", usuario.MotivoID);
            return View(usuario);
        }

        // GET: Usuario/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var usuario = await _context.Usuario
                .Include(u => u.Distrito)
                .Include(u => u.Motivo)
                .FirstOrDefaultAsync(m => m.UsuarioID == id);
            if (usuario == null)
            {
                return NotFound();
            }

            return View(usuario);
        }

        // POST: Usuario/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var usuario = await _context.Usuario.FindAsync(id);
            _context.Usuario.Remove(usuario);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool UsuarioExists(int id)
        {
            return _context.Usuario.Any(e => e.UsuarioID == id);
        }
    }
}
