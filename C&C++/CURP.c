#include <stdio.h>
#include <ctype.h>
int main(void)
{
char Nom[20],App[20],Apm[20],DN[20],MN[20],AN[20],G,Edo[2];
int a=1,b=1,c=1,d=1;
//Ingresa el nombre
printf ("Ingresa tu nombre: \n");
printf ("En caso de que seas hombre, tengas 2 nombres u el primero sea Jose escribe solo el segundo \n");
printf ("En caso de que seas mujer, tengas 2 nombres y tu primer nombre sea Maria escribe solo el segundo \n");
scanf ("%s",&Nom);

//Ingresa elapellido paterno
printf("Ingresa tu apellido paterno: \n");
scanf("%s",&App);

//Ingresa el apellido materno
printf("Ingresa tu apellido materno: \n");
scanf("%s",&Apm);

//Ingresa el dia de nacimiento
printf("Ingresa tu día de nacimineto: \n");
printf("En 2 digitos\n");
scanf("%s",&DN);

//Ingresa el mes de nacimiento
printf("Ingresa tu mes de nacimiento \n");
printf("En 2 digitos\n");
scanf("%s",&MN);

//Ingresa el año de nacimiento
printf("Ingresa tu año de nacimineto: \n");
printf("En 4 digitos\n");
scanf("%s",&AN);


//Ingresa si eres el o ella
printf("Pon una H si eres hombre \n");
printf("Pon una M si eres Mujer \n");
scanf("%s",&G);

//Para que sacar la primer vocal del primer apellido
while((App[a]!='a')&&(App[a]!='e')&&(App[a]!='i')&&(App[a]!='o')&&(App[a]!='u')&&(App[a]!='A')&&(App[a]!='E')&&(App[a]!='I')&&(App[a]!='0')&&(App[a]!='U')) a++;

	printf("Voy a necesitar de tu ayuda crack\n");
	printf("Ingresa las 2 letras correspondientes a tu estado\n");
	printf("No la vayas a cagar\n");
	printf("Aguascalientes: AG \n");
    	printf("Baja California: BC \n");
    	printf("Baja California Sur: BS \n");
	printf("Campeche: CC \n");
	printf("Chiapas: CS \n");
	printf("Chihuahua: CH \n");
	printf("Coahuila: CL \n");
	printf("Colima: CM \n");
	printf("Distrito Federal: DF \n");
	printf("Durango: DG \n");
	printf("Guanajuato: GT \n");
	printf("Guerrero: GR \n");
	printf("Hidalgo: HG \n");
	printf("Jalisco: JC \n");
	printf("Mexico: MC \n");
	printf("Michoacan: MN\n");
	printf("Morelos: MS \n");
	printf("Nayarit: NT \n");
	printf("Nuevo Leon: NL \n");
	printf("Oaxaca: OC \n");
	printf("Puebla: PL \n");
	printf("Queretaro: QT \n");
	printf("Quintana Roo: QR \n");
	printf("San Luis Potosi: SP \n");
	printf("Sinaloa: SN \n");
	printf("Sonora: SR \n");
	printf("Tabasco: TC \n");
	printf("Tamaulipas: TS \n");
	printf("Tlaxcala(Aunque no exista): TL \n");
	printf("Veracruz: VZ \n");
	printf("Yucatan: YN \n");
	printf("Zacatecas: ZS \n");
	printf("Nacido en el Extrangero: NE \n");
	scanf("%s",Edo);
	
//Para la pos 14 
while((App[b]=='a')||(App[b]=='e')||(App[b]=='i')||(App[b]=='o')||(App[b]=='u')||(App[b]=='A')||(App[b]=='E')||(App[b]=='I')||(App[b]=='O')||(App[b]=='U')) b++;
	//Para la pos 15 
while((Apm[c]=='a')||(Apm[c]=='e')||(Apm[c]=='i')||(Apm[c]=='o')||(Apm[c]=='u')||(Apm[c]=='A')||(Apm[c]=='E')||(Apm[c]=='I')||(Apm[c]=='O')||(Apm[c]=='U')) c++;
//Para la pos 16 
while((Nom[d]=='a')||(Nom[d]=='e')||(Nom[d]=='i')||(Nom[d]=='o')||(Nom[d]=='u')||(Nom[d]=='A')||(Nom[d]=='E')||(Nom[d]=='I')||(Nom[d]=='O')||(Nom[d]=='U')) d++;
//Imprime la curp
printf(" Tu curp es:\n %c%c%c%c%c%c%c%c%c%c%c%c%c%c%c%c00",toupper(App[0]),toupper(App[a]),toupper(Apm[0]),toupper(Nom[0]),AN[2],AN[3],MN[0],MN[1],DN[0],DN[1],toupper(G),toupper(Edo[0]),toupper(Edo[1]),toupper(App[b]),toupper(Apm[c]),toupper(Nom[d]));
}