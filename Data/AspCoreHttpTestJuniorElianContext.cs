using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using AspCoreHttpTestJuniorElian.Models;

namespace AspCoreHttpTestJuniorElian.Data
{
    public class AspCoreHttpTestJuniorElianContext : DbContext
    {
        public AspCoreHttpTestJuniorElianContext (DbContextOptions<AspCoreHttpTestJuniorElianContext> options)
            : base(options)
        {
        }

        public DbSet<AspCoreHttpTestJuniorElian.Models.Produto> Produto { get; set; }
    }
}
