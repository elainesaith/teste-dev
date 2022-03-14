using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using TesteAPI.Data;
using TesteAPI.Models;

namespace TesteAPI.Controllers
{
    [ApiController]
    [Route("fornecedores")]
    public class FornecedorController : ControllerBase
    {
        [HttpGet]
        [Route("")]
        public async Task<ActionResult<List<Fornecedor>>> Get([FromServices] DataContext context)
        {
            var fornecedores = await context.Fornecedores.ToListAsync();
            return fornecedores;
        }

        [HttpGet]
        [Route("{id:int}")]
        public async Task<ActionResult<Fornecedor>> GetById([FromServices] DataContext context, int id)
        {            
            var fornecedores = await context.Fornecedores
                .AsNoTracking()
                .FirstOrDefaultAsync(x => x.codigo_fornecedor == id);
            return fornecedores;
        }
    }
}