module bit_4_multiplier(input logic [3:0]a,b,input logic clr ,output logic [7:0]p


    );
    supply0 gnd;
    logic c,d,e,f,g,h,i,j,k,l,m,n,o,q,r,s,t,u,v,w,x,y,z;
    and(p[0],a[0],b[0]);
    and(c,a[1],b[0]);
    and(d,a[2],b[0]);
    and(e,a[3],b[0]);
    and(f,a[0],b[1]);
    and(g,a[1],b[1]);
    and(h,a[2],b[1]);
    and(i,a[3],b[1]);
    bit_4_adder add1({gnd,e,d,c},{i,h,g,f},clr,{m,l,k,j,p[1]});
    and(n,a[0],b[2]);
    and(o,a[1],b[2]);
    and(q,a[2],b[2]);
    and(r,a[3],b[2]);
    bit_4_adder add2({m,l,k,j},{r,q,o,n},clr,{v,u,t,s,p[2]});
    and(w,a[0],b[3]);
    and(x,a[1],b[3]);
    and(y,a[2],b[3]);
    and(z,a[3],b[3]);
    bit_4_adder add3({v,u,t,s},{z,y,x,w},clr,p[7:3]);
    
    
  endmodule
