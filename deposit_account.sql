create table customers(id number primary key,
                      name varchar2(30),
                      surname varchar2(30),
                      birth_date date,
                      address varchar2(50),
                      email varchar2(40),
                      phone number);
                      
create table deposit_acc(id number primary key,
                      cust_id references customers(id),
                      dep_amount number,
                      int_rate number,
                      begin_date date,
                      end_date date);
                      
                                 


insert into customers values(1, 'Leyli', 'Hasanli', to_date('19.09.1987','dd.mm.yyyy'), 'Baku, Azerbaijan', 'leyli.hasan87@gmail.com', 123456);
insert into customers values(2, 'Mahmud', 'Jafarli', to_date('05.01.1995','dd.mm.yyyy'), 'Absheron, Azerbaijan', 'jafarlimahmud@gmail.com', 147258);
insert into customers values(3, 'Elmin', 'Tehmezov', to_date('25.07.1975','dd.mm.yyyy'), 'Baku, Azerbaijan', 'elmin75@mail.ru', 123987);
insert into customers values(4, 'Murad', 'Haciyev', to_date('13.11.1998','dd.mm.yyyy'), 'Sumqayit, Azerbaijan', 'themurad@outlook.com', 259633);
insert into customers values(5, 'Sevil', 'Gasimova', to_date('08.03.1997','dd.mm.yyyy'), 'Baku, Azerbaijan', 'sevil.gasimova@gmail.com', 789032);
insert into customers values(6, 'Ulker', 'Tagizade', to_date('28.02.1990','dd.mm.yyyy'), 'Sumqayit, Azerbaijan', 'ulker_tagizade@mail.ru', 654398);
insert into customers values(7, 'Hemid', 'Hemidov', to_date('07.12.1987','dd.mm.yyyy'), 'Baku, Azerbaijan', 'hemid1987@inbox.ru', 778903);
insert into customers values(8, 'Tahir', 'Aliyev', to_date('18.04.1988','dd.mm.yyyy'), 'Absheron, Azerbaijan', 'tahir.aliyev1@gmail.com', 124598);
insert into customers values(9, 'Kenan', 'Hesenov', to_date('12.07.1976','dd.mm.yyyy'), 'Baku, Azerbaijan', 'hesenov_kenan_@gmail.com', 853614);
insert into customers values(10, 'Nilay', 'Bekirli', to_date('14.09.1999','dd.mm.yyyy'), 'Baku, Azerbaijan', 'nilayybekirli@gmail.com', 980245);
insert into customers values(11, 'Sevda', 'Muradli', to_date('17.07.1989','dd.mm.yyyy'), 'Sumqayit, Azerbaijan', 'muradli_sevda@mail.ru', 786522);
insert into customers values(12, 'Punhan', 'Mikayilov', to_date('29.06.1996','dd.mm.yyyy'), 'Baku, Azerbaijan', 'punhanmikayil@gmail.com', 775236);
insert into customers values(13, 'Aynur', 'Hasanli', to_date('15.05.1968','dd.mm.yyyy'), 'Absheron, Azerbaijan', 'aynur123@gmail.com', 178556);
insert into customers values(14, 'Rehim', 'Aliyev', to_date('22.06.1977','dd.mm.yyyy'), 'Baku, Azerbaijan', 'rehim_aliyev7@mail.ru', 456456);
insert into customers values(15, 'Jale', 'Sadiqova', to_date('25.12.1981','dd.mm.yyyy'), 'Sumqayit, Azerbaijan', 'jalesadiqova@gmail.ru', 114456);

select * from customers;

select add_months(to_date('01.08.2021','dd.mm.yyyy'),-12) from dual;

insert into deposit_acc values(1111, 8, 2000, 1.25, to_date('01.02.2021','dd.mm.yyyy'), to_date('01.08.2021','dd.mm.yyyy')); --6 mon, 1.25%, 2000AZN 
insert into deposit_acc values(1112, 4, 100000, 2.5, to_date('03.05.2021','dd.mm.yyyy'), to_date('03.08.2021','dd.mm.yyyy')); --3 mon, 2.5%, 100000AZN 
insert into deposit_acc values(1113, 13, 50000, 1.75, to_date('03.08.2020','dd.mm.yyyy'), to_date('03.08.2021','dd.mm.yyyy')); --12 mon, 1.75%, 50000AZN 
insert into deposit_acc values(1114, 2, 150000, 3, to_date('30.03.2021','dd.mm.yyyy'), to_date('30.07.2021','dd.mm.yyyy')); --4 mon, 3%, 150000AZN 
insert into deposit_acc values(1115, 1, 5000, 1.25, to_date('30.06.2021','dd.mm.yyyy'), to_date('30.07.2021','dd.mm.yyyy')); --1 mon, 1.25%, 5000AZN 
insert into deposit_acc values(1116, 8, 500000, 3.5, to_date('01.08.2020','dd.mm.yyyy'), to_date('01.08.2021','dd.mm.yyyy')); --12 mon, 3.5%, 500000AZN 
insert into deposit_acc values(1117, 3, 20000, 1.25, to_date('05.06.2021','dd.mm.yyyy'), to_date('05.07.2021','dd.mm.yyyy')); --1 mon, 1.25%, 20000AZN 
insert into deposit_acc values(1118, 10, 3000, 1.25, to_date('21.02.2021','dd.mm.yyyy'), to_date('21.07.2021','dd.mm.yyyy')); --5 mon, 1.25%, 3000AZN 
insert into deposit_acc values(1119, 5, 120000, 2.5, to_date('25.02.2021','dd.mm.yyyy'), to_date('25.04.2021','dd.mm.yyyy')); --2 mon, 2.5%, 120000AZN 
insert into deposit_acc values(1120, 9, 7000, 1.25, to_date('01.02.2021','dd.mm.yyyy'), to_date('01.08.2021','dd.mm.yyyy')); --6 mon, 1.25%, 7000AZN 
insert into deposit_acc values(1121, 7, 18000, 1.75, to_date('01.08.2021','dd.mm.yyyy'), to_date('01.08.2022','dd.mm.yyyy')); --12 mon, 1.75%, 18000AZN 
insert into deposit_acc values(1122, 6, 45000, 1.25, to_date('03.08.2021','dd.mm.yyyy'), to_date('03.09.2021','dd.mm.yyyy')); --1 mon, 1.25%, 45000AZN 
insert into deposit_acc values(1123, 11, 1000, 1.25, to_date('03.02.2021','dd.mm.yyyy'), to_date('03.09.2021','dd.mm.yyyy')); --7 mon, 1.25%, 1000AZN
insert into deposit_acc values(1124, 14, 400000, 2.5, to_date('21.07.2021','dd.mm.yyyy'), to_date('21.09.2021','dd.mm.yyyy')); --2 mon, 2.5%, 400000AZN
insert into deposit_acc values(1125, 12, 10000, 1.75, to_date('15.05.2021','dd.mm.yyyy'), to_date('15.05.2022','dd.mm.yyyy')); --12 mon, 1.75%, 10000AZN


select * from deposit_acc;

---Calculating final amount
---Musterinin alacagi meblegin hesablanmasi
create or replace function find_amount(dep_id number)
return number
is 
res number;
dep_data deposit_acc%rowtype;
begin 
  select * into dep_data from deposit_acc d where d.id=dep_id;
  if dep_data.end_date<=trunc(sysdate)
    then
        res:= dep_data.dep_amount+(dep_data.dep_amount*dep_data.int_rate)/100; 
  else
        res:=dep_data.dep_amount;
  end if;     
  return res;
end;

--check 1114, 1115, 1112 and 1121
declare
res number;
dep_id number;
begin 
  dep_id:=1121;
  res:=find_amount(dep_id);
  dbms_output.put_line('Final amount is ' || res || ' AZN.');
end;



-----------------------------------------------------------------------------------------------------------------------------------
--Procedure for today’s creditors
--Her gun ucun o gunun musterilerinin alacagi faizler hesablanilib cedvele daxil edilmelidir
create table todays_amount(cust_id number,
                           name varchar2(50),
                           surname varchar2(50),
                           dep_id number,
                           final_amount number);
                           
create or replace view cus_dep as 
select c.id, c.name, c.surname, d.id dep_id, d.dep_amount, d.int_rate, d. end_date from customers c
inner join deposit_acc d
on c.id=d.cust_id;

create or replace procedure amount_today(curr_date date)
is
final_amount number;
begin
   delete from todays_amount;
   for rec in (select * from cus_dep)
    loop
     if rec.end_date=curr_date
       then
         final_amount:=rec.dep_amount+(rec.dep_amount*rec.int_rate)/100;
         insert into todays_amount values(rec.id, rec.name, rec.surname, rec.dep_id, final_amount);
     end if; 
   end loop;
end;

declare
curr_date date;
begin 
  curr_date:=trunc(sysdate);
  amount_today(curr_date);
end;

select * from todays_amount;






