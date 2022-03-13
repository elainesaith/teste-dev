using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace TesteAPI.Models
{
    public class Produto
    {
        [Key]
        public int codigo_produto { get; set; }
        public string descricao_produto { get; set; }
        public string situacao_produto { get; set; }
        public DateTime fabricacao_produto { get; set; }
        public DateTime validade_produto { get; set; }
        public int codigo_fornecedor { get; set; }
        
        [ForeignKey("codigo_fornecedor")]
        public Fornecedor Fornecedores { get; set; }
    }
}
