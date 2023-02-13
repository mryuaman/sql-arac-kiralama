create database db_proje
use db_proje

create table tbl_musteriler(
musterino int primary key,
musisim varchar(max),
mussoyad varchar(max),
mustc nvarchar(11),
musadres varchar(100),
mustelefon varchar(11),
cinsiyet varchar(5),
ehliyetno varchar(5),
musdogumtarih date,
mussicilno varchar(13),
)

create table tbl_araclar(
aracno tinyint primary key,
plaka varchar(12),
yolcusayisi tinyint,
marka varchar(20),
aractip varchar(10),
renk char(10),
)

create table tbl_subeler(
subeno int primary key,
subead varchar(20),
subeadres varchar(50),
subetel varchar(12),
subearacsayi smallint,
)

create table tbl_calisan(
calisanno int primary key,
calisanisim varchar(20),
calisansoyad varchar(20),
calisanadres varchar(50),
calisantel varchar(12),
calisancins varchar(5),
cnpuan smallint,
calisandogum date,
subeno int foreign key references tbl_subeler(subeno),
isegiristarih date,
calisantc varchar(11),
sigortano varchar(26),
maas smallint,
)

create table tbl_aracsigorta(
arcsigortano int primary key,
arcsigortapuan smallint,
arcsigortatutar smallint,
arcsigortatarih date,
)


create table tbl_kiralamalar(
kiralamano int primary key,
aracno tinyint foreign key references tbl_araclar(aracno),
musterino int foreign key references tbl_musteriler(musterino),
kiralamasure smallint,
kiralamatutarý smallint,
subeno int foreign key references tbl_subeler(subeno),
)

create table tbl_stoklar(
subeno int foreign key references tbl_subeler(subeno),
stokdurum varchar(10),
stokgiris date,
)

create table tbl_rezervazyonlar(
rezerveno int primary key,
musterino int foreign key references tbl_musteriler(musterino),
aracno tinyint foreign key references tbl_araclar(aracno),
aracsigortano int foreign key references tbl_aracsigorta(arcsigortano),
subeno int foreign key references tbl_subeler(subeno),
)

create table tbl_kampanyalar(
kampanyano int primary key,
musterino int foreign key references tbl_musteriler(musterino),
subeno int foreign key references tbl_subeler(subeno),
kampanyasure date,
)

create table tbl_geridonus(
donusno int primary key,
musterino int foreign key references tbl_musteriler(musterino),
subeno int foreign key references tbl_subeler(subeno),
calisanno int foreign key references tbl_calisan(calisanno),
donustarih date,
donuspuan smallint,

)

insert into tbl_araclar values('1','34mka1881','4','renault','sedan','kýrmýzý')
insert into tbl_araclar values('2','34bnl968','4','bmw','hatchback','siyah')
insert into tbl_araclar values('3','34kfa589','5','nissan','suv','gri')
insert into tbl_araclar values('4','34sfd896','2','wolksvagen','coupe','beyaz')
insert into tbl_araclar values('5','34bhk26','4','mercedes','sedan','siyah')
insert into tbl_araclar values('6','34ddo122','5','renault','suv','turuncu')
insert into tbl_araclar values('7','34rr96','4','bmw','sedan','mavi')
insert into tbl_araclar values('8','34ph3458','4','renault','sedan','beyaz')
insert into tbl_araclar values('9','34gs1905','4','ford','sedan','kýrmýzý')
insert into tbl_araclar values('10','34dml2015','8','dacia','suv','kahverengi')
insert into tbl_araclar values('11','34mac868','2','bmw','coupe','siyah')
insert into tbl_araclar values('12','34apg687','4','skoda','sedan','kýrmýzý')
insert into tbl_araclar values('13','34fdl358','4','honda','hatchback','siyah')
insert into tbl_araclar values('14','34kfd389','4','daica','suv','mavi')
insert into tbl_araclar values('15','34bjk1903','2','hyundai','coupe','beyaz')
insert into tbl_araclar values('16','34las896','4','bmw','sedan','siyah')
insert into tbl_araclar values('17','34doe96','5','cupra','suv','gri')
insert into tbl_araclar values('18','34bgh620','4','ford','sedan','mavi')
insert into tbl_araclar values('19','34add10','4','renault','sedan','beyaz')
insert into tbl_araclar values('20','34mrt42','4','ford','sedan','kýrmýzý')


insert into tbl_musteriler values('1','mehmet','cuhaci','25169031412','fsm','05316949144','erkek','35945','2002','6894785615315')
insert into tbl_musteriler values('2','damla','özcan','12482184714','beþiktaþ','05342134521','kadýn','89456','1992','6489213584689')
insert into tbl_musteriler values('3','yunus','acar','35896423548','üsküdar','05368947866','erkek','34896','1988','97854683124569')
insert into tbl_musteriler values('4','murat','eken','64893154863','sarýyer','05326051789','erkek','56489','2003','1354896482548')
insert into tbl_musteriler values('5','enes','gergin','94586231585','fsm','05368489315','erkek','39413','2002','6929373226235')
insert into tbl_musteriler values('6','ali','gül','9548621585','cihangir','05326854968','erkek','39438','1981','6548621564832')
insert into tbl_musteriler values('7','betül','dura','95248936212','beyoðlu','05546489799','kadýn','48962','1999','3584689721235')
insert into tbl_musteriler values('8','fatma','çaðaç','45671232458','cevizlibað','05316316996','kadýn','94532','1998','2548961234857')
insert into tbl_musteriler values('9','sibel','yýlmaz','12458963752','tepekent','05353296815','kadýn','35468','1993','6548315986542')
insert into tbl_musteriler values('10','abdullah','vermez','45782136472','sefaköy','05458466520','erkek','16589','1997','6476070354025')
insert into tbl_musteriler values('11','nurcin','subari','40644233792','ikitelli','0536987534','kadýn','43580','1988','2473634312676')
insert into tbl_musteriler values('12','melike','yaylý','17851602178','çekmeköy','05356849872','kadýn','20143','1983','5421310223304')
insert into tbl_musteriler values('13','beyhan','ergut','97201987384','altunizade','05316452358','erkek','41905','1995','1377292790996')
insert into tbl_musteriler values('14','fatmanur','güllü','79843051760','esenler','05321254896','kadýn','48127','1984','5543456736247')
insert into tbl_musteriler values('15','þehmus','gedük','80368008856','florya','05556849312','erkek','34492','2000','8596630945242')
insert into tbl_musteriler values('16','þeref','çift','25623627700','sarýyer','05311366831','erkek','43517','1996','9909546944526')
insert into tbl_musteriler values('17','alparslan','erden','22066930794','uskumruköy','05516963113','kadýn','41282','1991','5235513123278')
insert into tbl_musteriler values('18','ali','dumludað','72684113338','reþitpaþa','05398756325','kadýn','30545','1990','1560131655438')
insert into tbl_musteriler values('19','dilara','baydoðan','59582288344','akatlar','05354832154','kadýn','17637','1981','2371952394561')
insert into tbl_musteriler values('20','neþe','alýcýlar','39000814904','hisarüstü','05446896321','kadýn','47674','1977','3026063664286')

insert into tbl_subeler values('1','acar','beyoðlu','02123589640','10')
insert into tbl_subeler values('2','derdim','bursa','02123589641','15')
insert into tbl_subeler values('3','sarýyer','sarýyer','02123589642','6')
insert into tbl_subeler values('4','beþiktaþ','beþiktaþ','02123589643','0')
insert into tbl_subeler values('5','gültepe','gültepe','02123589644','8')
insert into tbl_subeler values('6','esenyurt','tepekent','02123589645','31')
insert into tbl_subeler values('7','üsküdar','altunizade','02123589646','5')
insert into tbl_subeler values('8','kadýköy','ümraniye','02123589647','2')
insert into tbl_subeler values('9','arnavutköy','göktürk','02123589648','27')
insert into tbl_subeler values('10','kaðýthane','sanayimahallesi','02123589649','9')
insert into tbl_subeler values('11','esenler','esenyurt','02126064828','10')
insert into tbl_subeler values('12','sarýyer','fsm','02122118852','15')
insert into tbl_subeler values('13','beþiktaþ','ortaköy','02122433429','14')
insert into tbl_subeler values('14','beyoðlu','cihangir','02128817324','15')
insert into tbl_subeler values('15','etiler','etiler','02129983995','21')
insert into tbl_subeler values('16','levent','çarþý','02128047775','4')
insert into tbl_subeler values('17','þiþli','mecidiyeköy','02127797056','12')
insert into tbl_subeler values('18','gayrettepe','zincirlikuyu','02121380493','6')
insert into tbl_subeler values('19','þiþli','perpa','02129028493','15')
insert into tbl_subeler values('20','beyoðlu','karaköy','02126092996','5')

insert into tbl_calisan values('1','ahmet','çakar','gültepe','05315896478','erkek','10','1985','1','2010','2516849762','33356617385869335909904139','12000')
insert into tbl_calisan values('2','mehmet','güzel','beþiktaþ','05319785896','erkek','5','1999','2','2013','26978230128','64561186834725956300594598','24000')
insert into tbl_calisan values('3','buse','yýldýrým','silivri','05324896845','kadýn','10','1989','3','2007','35169412685','74632518056596083511819962','12000')
insert into tbl_calisan values('4','selim','yýlmaz','beyoðlu','05315684987','erkek','8','1978','4','2007','31595426845','79637711712888326277895914','12000')
insert into tbl_calisan values('5','beyazýt','sultan','sarýyer','05318975648','erkek','9','2000','5','2011','26848962157','60987677865633119989722895','12000')
insert into tbl_calisan values('6','tuðba','karaca','kaðýthane','05353296523','kadýn','9.5','1996','6','2020','49845589752','32879546392350356936975939','17000')
insert into tbl_calisan values('7','kübra','oya','sanayimah','05365895489','kadýn','10','1982','7','2022','31897856478','54632426986684196724557395','12000')
insert into tbl_calisan values('8','süleyman','eken','çeliktepe','05368978234','erkek','10','1983','8','2018','21587965484','76040850042181467773038897','10000')
insert into tbl_calisan values('9','baþak','nurdan','levent','05368978526','kadýn','6','1985','9','2009','68497515848','45339465143374447868126036','16000')
insert into tbl_calisan values('10','murat','haktan','fsm','05368794688','erkek','2','1999','10','2011','45879521563','96568228597997063414020947','8500')
insert into tbl_calisan values('11','habibe','karakan','gültepe','05343196949','kadýn','10','1980','1','2010','10308171326','12589468796312458796321548','12000')
insert into tbl_calisan values('12','halil','burak','beþiktaþ','05393432255','erkek','5','1993','2','2013','63347769566','93830058496011047878141168','24000')
insert into tbl_calisan values('13','hanife','batýbay','þiþli','05334236858','kadýn','10','1970','3','2007','49609316648','58921256682047250952172420','12000')
insert into tbl_calisan values('14','hasan','yar','etiler','05369441978','erkek','8','1984','4','2007','37455629326','19714784143462660039662417','12000')
insert into tbl_calisan values('15','samet','özdeþ','sarýyer','05370643879','erkek','9','1988','5','2011','19918275394','68602200101556709129563882','12000')
insert into tbl_calisan values('16','vahide','ayhan','kaðýthane','05345706943','kadýn','9.5','1983','6','2020','69879148282','45114473759707947536429107','17000')
insert into tbl_calisan values('17','cemile','postallý','sanayimah','05376448235','kadýn','10','1997','7','2022','56987981474','24298925943144874873137154','12000')
insert into tbl_calisan values('18','yaþar','çalýk','çeliktepe','05345181363','erkek','10','1983','8','1989','94744881094','12610230962386487172592378','10000')
insert into tbl_calisan values('19','bensu','akyürek','levent','05336980421','kadýn','6','1990','9','1996','42117982206','95985380647266607417959017','16000')
insert into tbl_calisan values('20','hale','küçük','etiler','05398691305','kadýn','2','1982','10','1982','22344670312','77513863355553616208424038','11000')

insert into tbl_aracsigorta values('12687','100','1500','2022')
insert into tbl_aracsigorta values('34469','69','2000','2022')
insert into tbl_aracsigorta values('21150','100','1500','2022')
insert into tbl_aracsigorta values('53839','50','5000','2022')
insert into tbl_aracsigorta values('99056','20','7000','2022')
insert into tbl_aracsigorta values('40588','100','1500','2022')
insert into tbl_aracsigorta values('75276','100','1500','2022')
insert into tbl_aracsigorta values('91174','100','1500','2022')
insert into tbl_aracsigorta values('97664','100','1500','2022')
insert into tbl_aracsigorta values('12198','95','1700','2022')
insert into tbl_aracsigorta values('13913','50','5000','2022')
insert into tbl_aracsigorta values('80954','10','9000','2022')
insert into tbl_aracsigorta values('33705','100','1500','2022')
insert into tbl_aracsigorta values('69525','100','1500','2022')
insert into tbl_aracsigorta values('30186','90','1800','2022')
insert into tbl_aracsigorta values('42985','70','2000','2022')
insert into tbl_aracsigorta values('32456','90','1700','2022')
insert into tbl_aracsigorta values('23085','65','2200','2022')
insert into tbl_aracsigorta values('64497','75','1900','2022')
insert into tbl_aracsigorta values('38338','35','6500','2022')

insert into tbl_kiralamalar values('1','1','1','7','700','1')
insert into tbl_kiralamalar values('2','2','2','3','300','2')
insert into tbl_kiralamalar values('3','3','3','48','4800','3')
insert into tbl_kiralamalar values('4','4','4','12','1200','4')
insert into tbl_kiralamalar values('5','5','5','14','1400','5')
insert into tbl_kiralamalar values('6','6','6','6','600','6')
insert into tbl_kiralamalar values('7','7','7','9','900','7')
insert into tbl_kiralamalar values('8','8','8','52','5200','8')
insert into tbl_kiralamalar values('9','9','9','21','2100','9')
insert into tbl_kiralamalar values('10','10','10','7','700','10')
insert into tbl_kiralamalar values('11','11','11','2','200','11')
insert into tbl_kiralamalar values('12','12','12','15','1500','12')
insert into tbl_kiralamalar values('13','13','13','60','6000','13')
insert into tbl_kiralamalar values('14','14','14','20','2000','14')
insert into tbl_kiralamalar values('15','15','15','17','1700','15')
insert into tbl_kiralamalar values('16','16','16','34','3400','16')
insert into tbl_kiralamalar values('17','17','17','65','6500','17')
insert into tbl_kiralamalar values('18','18','18','30','3000','18')
insert into tbl_kiralamalar values('19','19','19','3','300','19')
insert into tbl_kiralamalar values('20','20','20','7','700','20')

insert into tbl_stoklar values('1','yeterli','2022')
insert into tbl_stoklar values('2','yeterli','2022')
insert into tbl_stoklar values('3','kritik','2022')
insert into tbl_stoklar values('4','kritik','2022')
insert into tbl_stoklar values('5','kritik','2022')
insert into tbl_stoklar values('6','yeterli','2022')
insert into tbl_stoklar values('7','kritik','2022')
insert into tbl_stoklar values('8','kritik','2022')
insert into tbl_stoklar values('9','yeterli','2022')
insert into tbl_stoklar values('10','kritik','2022')
insert into tbl_stoklar values('11','yeterli','2022')
insert into tbl_stoklar values('12','yeterli','2022')
insert into tbl_stoklar values('13','yeterli','2022')
insert into tbl_stoklar values('14','yeterli','2022')
insert into tbl_stoklar values('15','yeterli','2022')
insert into tbl_stoklar values('16','yeterli','2022')
insert into tbl_stoklar values('17','kritik','2022')
insert into tbl_stoklar values('18','kritik','2022')
insert into tbl_stoklar values('19','yeterli','2022')
insert into tbl_stoklar values('20','kritik','2022')

insert into tbl_rezervazyonlar values('1','1','1','12687','1')
insert into tbl_rezervazyonlar values('2','2','2','34469','2')
insert into tbl_rezervazyonlar values('3','3','3','21150','3')
insert into tbl_rezervazyonlar values('4','4','4','53839','4')
insert into tbl_rezervazyonlar values('5','5','5','99056','5')
insert into tbl_rezervazyonlar values('6','6','6','40588','6')
insert into tbl_rezervazyonlar values('7','7','7','75276','7')
insert into tbl_rezervazyonlar values('8','8','8','91174','8')
insert into tbl_rezervazyonlar values('9','9','9','97664','9')
insert into tbl_rezervazyonlar values('10','10','10','12198','10')
insert into tbl_rezervazyonlar values('11','11','11','13913','11')
insert into tbl_rezervazyonlar values('12','12','12','80954','12')
insert into tbl_rezervazyonlar values('13','13','13','33705','13')
insert into tbl_rezervazyonlar values('14','14','14','69525','14')
insert into tbl_rezervazyonlar values('15','15','15','30186','15')
insert into tbl_rezervazyonlar values('16','16','16','42985','16')
insert into tbl_rezervazyonlar values('17','17','17','32456','17')
insert into tbl_rezervazyonlar values('18','18','18','23085','18')
insert into tbl_rezervazyonlar values('19','19','19','64497','19')
insert into tbl_rezervazyonlar values('20','20','20','38338','20')

insert into tbl_kampanyalar values('1','1','1','10')
insert into tbl_kampanyalar values('2','2','2','3')
insert into tbl_kampanyalar values('3','3','3','1')
insert into tbl_kampanyalar values('4','4','4','14')
insert into tbl_kampanyalar values('5','5','5','7')
insert into tbl_kampanyalar values('6','6','6','5')
insert into tbl_kampanyalar values('7','7','7','10')
insert into tbl_kampanyalar values('8','8','8','10')
insert into tbl_kampanyalar values('9','9','9','10')
insert into tbl_kampanyalar values('10','10','10','30')
insert into tbl_kampanyalar values('11','11','11','90')
insert into tbl_kampanyalar values('12','12','12','7')
insert into tbl_kampanyalar values('13','13','13','14')
insert into tbl_kampanyalar values('14','14','14','10')
insert into tbl_kampanyalar values('15','15','15','10')
insert into tbl_kampanyalar values('16','16','16','10')
insert into tbl_kampanyalar values('17','17','17','90')
insert into tbl_kampanyalar values('18','18','18','14')
insert into tbl_kampanyalar values('19','19','19','7')
insert into tbl_kampanyalar values('20','20','20','30')

insert into tbl_geridonus values('1','1','1','1','2022','10')
insert into tbl_geridonus values('2','2','2','2','2019','5')
insert into tbl_geridonus values('3','3','3','3','2020','10')
insert into tbl_geridonus values('4','4','4','4','2022','10')
insert into tbl_geridonus values('5','5','5','5','2022','10')
insert into tbl_geridonus values('6','6','6','6','2022','10')
insert into tbl_geridonus values('7','7','7','7','2021','8')
insert into tbl_geridonus values('8','8','8','8','2023','10')
insert into tbl_geridonus values('9','9','9','9','2022','1')
insert into tbl_geridonus values('10','10','10','10','2022','7')
insert into tbl_geridonus values('11','11','11','11','2018','5')
insert into tbl_geridonus values('12','12','12','12','2017','10')
insert into tbl_geridonus values('13','13','13','13','2021','5')
insert into tbl_geridonus values('14','14','14','14','2022','10')
insert into tbl_geridonus values('15','15','15','15','2023','7')
insert into tbl_geridonus values('16','16','16','16','2022','10')
insert into tbl_geridonus values('17','17','17','17','2020','10')
insert into tbl_geridonus values('18','18','18','18','2020','4')
insert into tbl_geridonus values('19','19','19','19','2016','7')
insert into tbl_geridonus values('20','20','20','20','2018','10')


/* 1. Toplam kaç müþteri olduðunu veren trigger sorgusunu bulunuz.*/

create trigger müþteri
on musteriler
after insert
as
begin 
insert into tbl_musteriler (musterino) 
values ((select count (musterino) from tbl_musteriler))
end

/*2. Araçlarýn sigorta puanlarýný güncelleyen trigger sorgusunu yazýnýz.*/
create trigger guncellekontrol
on arcsigortapuan
after update
as
begin
select 'Güncelleme iþlemi gerçekleþti.'
end

update tbl_aracsigorta set arcsigortapuan=100 where tbl_araclar='wolksvagen'

/*3. Çalýþan maaþýný güncelleyen trigger sorgusunu yazýnýz.*/
create trigger guncellekontrol
on calisan
after update
as
begin
select 'Güncelleme iþlemi gerçekleþti.'
end

update tbl_calisan set maas=12000 where calisanisim='yaþar çalýk'


/*4.Hangi müþterilerin hangi kampanyaya dahil olduðunu bulunuz.*/

select musterino,kampanyalar from tbl_musteriler m1 inner join kampanya k1
on
m1.musterino=k1.kampanyalar

/*5. Hangi araçlara rezervasyon yapýldýðýnýz bulunuz.*/

select tbl_rezervazyonlar,tbl_araclar from tbl_rezervazyonlar r1 
inner join tbl_araclar a1
on 
r1.aracno=a1.aracno

/*6. Kaç kadýn müþteri araba kiralamýþtýr ? */

select count(tbl_kiralamalar.kiralamano) as kiralama_sayýsý from tbl_musteriler 
join tbl_kiralamalar on musteriler.musterino = tbl_kiralamalar.kiralamano 
where cinsiyet.cinsiyettanim='kadýn'

/*7. Müþteri isimlerinin hepsini büyük harfe çeviren fonskiyonu yazýnýz.*/
create function buyukharf(@gelendeger varchar(max))
returns varchar
as
begin
return upper(@gelendeger)
end 

select dbo.buyukharf(tbl_musteriler) from tbl_musteriler

/*8.Markasý ford olan araçlarýn sayýsýný bulunuz.*/
create function aracmarka(@gelendeger varchar(20))
returns int 
as
begin
declare @aracm int
select @aracm=count(marka) from tbl_araclar where marka=@gelendeger
return @aracm
end

select dbo.marka('ford')

/*9. Sigorta puaný 50'den yüksek olan araçlarý bulunuz.*/
create function aracpuan (gelenpuan int)
returns
as
begin
return (select * from tbl_aracsigorta where aracpuan>@gelenpuan)

select tbl_araclar,marka from dbo.aracpuan(50)


/*10. Üyelik oluþtururken telefon numarasýnýn 11 haneli olup olmadýðýný kontrol eden stored procedure yazýnýz.*/
alter procedure mustel
(@musterino smallint, @musisim nvarchar(20), 	@mussoyad nvarchar(30),
	as
	begin
	declare @kontrol1 tinyint, @kontrol2 tinyint
	set @kontrol1=(select LEN(@mustelefon))
	if(@kontrol1=10)
	begin
		set @kontrol2=(select COUNT(*) from tbl_musteriler where mustelefon=@mustelefon)
		if(@kontrol2<11)
		insert into tbl_musteriler (musterino, musisim,mussoyad,mustelefon) values (@musisim,@mussoyad,@musteritel,)
		else 
		raiserror ('Telefon Sistemde kayýtlý',13,2)
	end
	else 
	raiserror ('Lütfen telefon numarasýný 10 hane olacak sekilde giriniz',10,1)
	end
/*11. Üyelik oluþtururken tc kimlik numarasýnýn 11 haneli olup olmadýðýný kontrol eden stored procedure yazýnýz.*/
alter procedure mustc
(@musterino int primary key, @musisim nvarchar(20), 	@mussoyad nvarchar(30),
	as
	begin
	declare @kontrol1 tinyint, @kontrol2 tinyint
	set @kontrol1=(select LEN(@mustc))
	if(@kontrol1=11)
	begin
		set @kontrol2=(select COUNT(*) from tbl_musteriler where mustc=@mustc)
		if(@kontrol2<11)
		insert into tbl_musteriler (musterino, musisim,mussoyad,mustc) values (@musisim,@mussoyad,@mustc,)
		else 
		raiserror ('Tc kimlik numarasý sistemde kayýtlý',16,1)
	end
	else 
	raiserror ('Lütfen tc kimlik numarasýný 11 hane olacak sekilde giriniz',16,1)
	end

/*12.Çalýþan puaný 8den yüksek olan çalýþanlarý listeyen stored procedure yazýnýz.*/
alter procedure cnpuan
(@calisanisim varchar(20),@calisansoyad varchar(20),@calisanno int primary key),
as
begin
select* from tbl_calisan where cnpuan>8
end

