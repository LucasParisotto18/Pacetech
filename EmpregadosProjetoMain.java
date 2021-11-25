
package projeto2empregados;

import java.util.Scanner;

public class Projeto2Empregados {

   
    public static void main(String[] args) {
        
        Scanner leitor = new Scanner(System.in);
        
        Empregados e1 = new Empregados("Lucas","Parisotto",7000.5);
        Empregados e2 = new Empregados("João","Vitor",5000.5);
        
         System.out.println("Empregado 1: " + e1.getNome() + " " +
            e1.getSobrenome());
         System.out.println("Salário: "+ e1.getSalario()); 
 
    System.out.println("Empregado 2: " + e2.getNome() + " " +
            e2.getSobrenome());
    System.out.println("Salário: "+ e2.getSalario());  
   
    
    System.out.println("Com 10% de aumento:");
    
    e1.setSalario(e1.getSalario() * 1.10);
    e2.setSalario(e2.getSalario() * 1.10);
    
    System.out.println("Empregado 1: " + e1.getNome() + " " +
            e1.getSobrenome());
    System.out.println("Salário: "+ e1.getSalario());
 
    System.out.println("Empregado 2: " + e2.getNome() + " " +
            e2.getSobrenome());
    System.out.println("Salário: "+ e2.getSalario());
        
        
        
        
        
       
    }
    
}
