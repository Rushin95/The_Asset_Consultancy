/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package functions;

import static org.eclipse.persistence.expressions.ExpressionOperator.power;

/**
 *
 * @author rushin
 */
public class get_growth {
 
    public double get_growthrate(double startp,double finalp,double yeardiff)
            {
              double rate;
              double a=finalp/startp;
                System.out.println("a---"+a);
              double temp=1/yeardiff;
                System.out.println("temp---"+temp);
              double b=Math.pow(a,temp);
                System.out.println("b---"+b);
              rate=(b-1.0)*100;
                   System.out.println("----"+rate);
              
              return rate;
            }
    
}
