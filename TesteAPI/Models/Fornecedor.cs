using System.ComponentModel.DataAnnotations;

namespace TesteAPI.Models
{
    public class Fornecedor
    {
        [Key]
        public int codigo_fornecedor { get; set; }
        public string descricao_fornecedor { get; set; }
        public string cidade_fornecedor { get; set; }
    }
}
