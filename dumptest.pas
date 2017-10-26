{A Dump Rental business, overturns orders in the morning. There are 75 orders in total, each one is registered:
CODD (ID for day) TypeD (small-medium-large is the type of dump), DAYSA and% DISCOUNT.
It has a price table that contains the price per day of use, where each location is identified with the CODFD.
All these tables are already loaded.
With this information make the worksheets for the trucks
with the following data: CODD, PRICEXDAY, DAYSA, TYPED,% DISCOUNT, $ DISCOUNT AND FINAL PRICE}

program test;
uses crt;
type
request = record
codPv: string;
codPd: integer;
typeV: string;
daysA: integer;
porcDisc: integer;
end;
sheet = record
codV: string;
pricePrice: real;
daysA: integer;
typeV: string;
porcDisc: integer;
weightsDesc: real;
final price: real;
end;
vecPed = array [1..5] of request; // orders vector, is limited to 5 to make execution faster
vecCam = array [1..5] of sheet; // final payload vector for trucks
vecPre = array [1..5] of real; // vector of prices per day of use, is identified with the index from 1 to 5 since I decide to use 5 products only

procedure loadData (var vec: vecPed; var vec1: vecPre; var vec2: vecCam);
var
i: Integer;

begin
for i: = 1 to 5 of
begin
vec1 [i]: = 0;
vec [i] .codPv: = '';
vec [i] .codPd: = i; // I use the value of the index (1 to 5) to identify the id of the price
vec [i] .type V: = '';
vec [i] .data = 0;
vec [i] .porcDesc: = 0;
vec2 [i] .codV: = ''; // I initialize the vectors to be able to use them correctly in execution
vec2 [i] .Price = 0; // the statement does not ask for it
vec2 [i] .data = 0;
vec2 [i] .type V: = '';
vec2 [i] .porcDesc: = 0;
vec2 [i] .pesosDesc: = 0;
vec2 [i] .Final price: = 0;
end;
bbjkk
.x,,xretjweehgyrtw
for i: = 1 to 5 of
begin
writeln ('Enter the price per day of the product', i);
readln (vec1 [i]);
end;
end;

function discount (days: integer; porcen: integer; price: real): real;
var
prec: real;
begin
prec: = days * price;
discount: = (prec * percent) / 100;
end;

procedure FinalTemplate (var vec: vecCam; vec1: vecPre; vec2: vecPed);
var
i: integer;
begin
for i: = 1 to 5 of
begin
vec [i] .codV: = vec2 [i] .codPv;
vec [i] .Price: = vec1 [vec2 [i] .codPd];
vec [i] .data: = vec2 [i] .data;
vec [i] .type V: = vec2 [i] .type V;
vec [i] .porcDesc: = vec2 [i] .porcDesc;
vec [i] .pesosDesc: = discount (vec [i] .data, vec [i] .porcDesc, vec [i] .Price);
vec [i] .Final price: = (vec [i] .daysA * vec [i] .Price) - vec [i] .pesosDesc;
end;
writeln ('Form created with success');
readkey;
end;

procedure ImpressionFinals (vec: vecCam);
var
i: integer;

begin
for i: = 1 to 5 of
begin
writeln ('----------------------------------------------- ----------------------------------- ');
writeln ('Order number:', i);
writeln ('The dump code is:', vec [i] .codV);
writeln ('The price per day is:', vec [i] .Price: 0: 2);
writeln ('The number of days to use is:', vec [i] .daysA);
writeln ('The type of tipper is:', vec [i]. tipoV);
writeln ('The discounted percentage is:', vec [i] .porcDesc);
writeln ('The amount of discounted weights is:', vec [i] .pesosDesc: 0: 2);
writeln ('The final price is:', vec [i] .Final price: 0: 2);
end;
readkey;
end;

procedure loadDial (var vec: vecPed; var pos: integer);
var
rta: char;
begin
rta: = 's';
clrscr;
if (pos <= 5) then
begin
while (rta = 's') of
begin
vec [pos] .codPd: = pos;
writeln ('Enter the code of the tip');
readln (vec [pos] .codPv);
writeln ('Enter the days to use');
readln (vec [pos] .data);
writeln ('Enter the type of tipper');
readln (vec [pos] .typeV);
writeln ('Enter the percentage to be discounted');
readln (vec [pos] .porcDesc);
clrscr;
writeln ('Do you want to enter another order? S / N');
readln (rta);
pos: = pos + 1;
end;
end
else
writeln ('You can not enter more orders, the quota reached the maximum');
end;

var
Ordersvector: vecPed;
vectorFinalTrucks: vecCam;
vectorPrices: vecPre;
pos, opc: integer;

begin
dataData (OrderData, vectorPrices, vectorFinalTrucks);
pos: = 1;
opc: = 0;
clrscr;
while (opc <> 4)
begin
clrscr;
writeln ('1- To create a schedule of delivery orders for trucks');
writeln ('2- To take an order');
writeln ('3- To print the final template');
writeln ('4- To exit');
      readln (opc);
      case opc of
      1: finalSheet (vectorFinalTrucks, vectorPrices, Ordersvector);
      2: chargeDelivery (OrderData, pos);
      3: ImpressionFinal (vectorFinalTrucks);
      else
      writeln ('Thank you for using our services');
      end;
    end;
end.