using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AspCoreHttpTestJuniorElian.Models
{
    public class Produto
    {
        public int ProdutoID { get; set; }
        public string Descricao { get; set; }
        public double Preco { get; set; }
        public double Qtde { get; set; }
        public double ValorEstoque => Preco * Qtde;
    }   
}
