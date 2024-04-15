using DTO;
using System;
using System.Linq;

public class text
{
   public static void Main(string[] args)
    {
        QLDiemSinhVien.getInstance().Lops.ToList().ForEach(l => Console.WriteLine(l.MaNganh.ToString()));
    }
}