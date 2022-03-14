using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using TesteAPI.Data;
using TesteAPI.Models;

namespace TesteApi.Controllers
{
    [ApiController]
    [Route("produtos")]
    public class ProdutoController : ControllerBase
    {
        [HttpGet]
        [Route("")]
        public async Task<ActionResult<List<Produto>>> Get([FromServices] DataContext context)
        {
            var produtos = await context.Produtos.Include(x => x.Fornecedores).ToListAsync();
            return produtos;
        }

        [HttpGet]
        [Route("{id:int}")]
        public async Task<ActionResult<Produto>> GetById([FromServices] DataContext context, int id)
        {
            var produtos = await context.Produtos.Include(x => x.Fornecedores)
                .AsNoTracking()
                .FirstOrDefaultAsync(x => x.codigo_produto == id);
            return produtos;
        }
    }
}
