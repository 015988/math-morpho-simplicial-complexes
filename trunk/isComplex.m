function res=isComplex(c)
    temp=cCl(c);
    res=false;
    if all(all((c.points==temp.points)|(isnan(c.points))))
       if all(all( (c.h==temp.h)|(isnan(c.h))))
           if all(all((c.v==temp.v)|isnan(c.v)))
               if all(all((c.d==temp.d)|isnan(c.d)))
                   if all(all((c.t1==temp.t1)|isnan(c.t1)))
                       if all(all((c.t2==temp.t2)|isnan(c.t2)))
                           res=true;
                       end
                   end
               end
           end
       end
    end
end