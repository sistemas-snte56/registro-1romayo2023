<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

/*
        User::create(['name' => 'VICENTE JUAREZ ALARCON','email' => 'juarez.vic@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '242'])->assignRole('2Editor');
        User::create(['name' => 'MIROSLAVA HERNANDEZ DE LA MERCED','email' => 'meche@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '242'])->assignRole('Supervisor');
        User::create(['name' => 'BEATRIZ OLIVIA BARRADAS GONZÁLEZ','email'=> 'beatriz.bar.71@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '242'])->assignRole('Editor');
        User::create(['name' => 'ROBERTO CARLOS GARCÍA ALEJANDRE','email'=> 'alejandreroca@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '242'])->assignRole('Invitado');
*/

        User::create(['name' => 'VICENTE JUAREZ ALARCON','email' => 'juarez.vic@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '1'])->assignRole('Administrador');
        User::create(['name' => 'ISRAEL LANDA ORTIZ','email' => 'ilanda@email.com','password' => Hash::make('321321'), 'id_delegacion' => '1'])->assignRole('Supervisor');
        User::create(['name' => 'ABEL MENDOZA CONDADO','email' => 'amendoza@email.com','password' => Hash::make('321321'), 'id_delegacion' => '1'])->assignRole('Supervisor');
        User::create(['name' => 'HÉCTOR MIGUEL TORRES PÉREZ','email' => 'migueltorres830607@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '1'])->assignRole('Supervisor');
        User::create(['name' => 'JOSÉ GUADALUPE MUÑOZ REYES','email' => 'jose.guadamur78@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '1'])->assignRole('Supervisor');
        User::create(['name' => 'JUAN MARTÍNEZ ACOSTA','email' => 'acostajuan1380.ja@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '1'])->assignRole('Supervisor');
        User::create(['name' => 'SERGIO MARTÍNEZ MORATO','email' => 'moratoser77@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '1'])->assignRole('Supervisor');
        User::create(['name' => 'DORA CAROLINA LAGUNES DÍAZ','email' => 'carolain_12@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '1'])->assignRole('Supervisor');
        User::create(['name' => 'LUIS EDUARDO CHÁVEZ ROJO','email' => 'rojo_le@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '1'])->assignRole('Supervisor');
        User::create(['name' => 'RAMIRO MONTESINOS TRUJILLO','email' => 'redli@live.com.mx','password' => Hash::make('321321'), 'id_delegacion' => '1'])->assignRole('Supervisor');
        User::create(['name' => 'PORFIRIO GUTIÉRREZ LÓPEZ','email' => 'madajoev@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '1'])->assignRole('Supervisor');
        User::create(['name' => 'JOSÉ DE JESÚS SÁNCHEZ SERMAN','email' => 'licserman2009@live.com.mx','password' => Hash::make('321321'), 'id_delegacion' => '1'])->assignRole('Supervisor');
        User::create(['name' => 'FRANCISCO CILIAS SUSUNAGA','email' => 'cilias_susunaga@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '1'])->assignRole('Supervisor');
        User::create(['name' => 'LUIS ARMANDO LÓPEZ ALVARADO','email' => 'luisbachis@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '1'])->assignRole('Supervisor');
        User::create(['name' => 'LUIS EUSEBIO USCANGA OCHOA','email' => 'lefnegrito@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '171'])->assignRole('Editor');
        User::create(['name' => 'LUÍS ALFREDO HERRERA HERNÁNDEZ','email' => 'snte56d-ii-59panuco@outlook.com','password' => Hash::make('321321'), 'id_delegacion' => '152'])->assignRole('Editor');
        User::create(['name' => 'JORGE LUIS BERNABE GARCIA','email' => 'jlberna_18@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '165'])->assignRole('Editor');
        User::create(['name' => 'PÁVEL ISRAEL GARCÍA GÓMEZ','email' => 'pavelisraelgarciagomez@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '114'])->assignRole('Editor');
        User::create(['name' => 'BEATRIZ OLIVIA BARRADAS GONZÁLEZ','email' => 'beatriz.bar.71@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '77'])->assignRole('Editor');
        User::create(['name' => 'ROBERTO CARLOS GARCÍA ALEJANDRE','email' => 'alejandreroca@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '94'])->assignRole('Editor');
        User::create(['name' => 'IRIS CRISTAL CAMARERO PRIEGO','email' => 'pink082484@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '8'])->assignRole('Editor');
        User::create(['name' => 'JAVIER MALERVA MARTÍNEZ','email' => 'javiermalerva80@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '9'])->assignRole('Editor');
        User::create(['name' => 'ANA ISABEL SALAZAR MARTÍNEZ','email' => 'samaranai1@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '116'])->assignRole('Editor');
        User::create(['name' => 'ENRIQUE LUNA MUÑOZ','email' => 'prof.luna@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '125'])->assignRole('Editor');
        User::create(['name' => 'JESÚS DEL ÁNGEL ROBLES','email' => 'chuzo_2008@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '129'])->assignRole('Editor');
        User::create(['name' => 'TONATIU GARCIA AMADOR','email' => 'tonanzin17@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '147'])->assignRole('Editor');
        User::create(['name' => 'KARLA ANGELICA VALERIO PAZ','email' => 'profra.vp@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '57'])->assignRole('Editor');
        User::create(['name' => 'EMMANUEL OBANDO PEREZ','email' => 'obando.83@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '35'])->assignRole('Editor');
        User::create(['name' => 'MARIO HERVIN SOSA SOSA','email' => 'mariohervin@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '19'])->assignRole('Editor');
        User::create(['name' => 'JOSÉ DANIEL LOYA ROSAS','email' => 'josedanielloyarosas@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '38'])->assignRole('Editor');
        User::create(['name' => 'LUCAS BAUTISTA HERNANDEZ','email' => 'astaez1978@outlook.com','password' => Hash::make('321321'), 'id_delegacion' => '71'])->assignRole('Editor');
        User::create(['name' => 'ELIZABETH ESCOBAR PERDOMO','email' => 'eli.escper@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '80'])->assignRole('Editor');
        User::create(['name' => 'GABRIEL ROBERTO ZAVALA QUINTERO','email' => 'chaneque_zavala@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '144'])->assignRole('Editor');
        User::create(['name' => 'JUAN CRUZ LAGUNES','email' => 'delboing_jcl@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '128'])->assignRole('Editor');
        User::create(['name' => 'KARINA LANDA RODRÍGUEZ','email' => 'karina.ne2008@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '60'])->assignRole('Editor');
        User::create(['name' => 'NIMBE ELISDATH FLORES ACOSTA','email' => 'braxton111@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '43'])->assignRole('Editor');
        User::create(['name' => 'ASAID GARCÍA MARTÍNEZ','email' => 'gamasaid@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '93'])->assignRole('Editor');
        User::create(['name' => 'JOSÉ ANTONIO PREZA REYES','email' => 'snteeducacionfisica_mtz@outlook.com','password' => Hash::make('321321'), 'id_delegacion' => '167'])->assignRole('Editor');
        User::create(['name' => 'EDUARDO MIGUEL MONTALVO MARTÍNEZ','email' => 'kowboy_9@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '106'])->assignRole('Editor');
        User::create(['name' => 'MARIO ALBERTO ABURTO CANO','email' => 'cano241085@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '74'])->assignRole('Editor');
        User::create(['name' => 'ARMANDO RODRÍGUEZ HERNÁNDEZ','email' => 'rohea_2002@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '126'])->assignRole('Editor');
        User::create(['name' => 'HABACUC VLADIMIR AGUILAR RAMÍREZ','email' => 'vlad_aguilarjr@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '136'])->assignRole('Editor');
        User::create(['name' => 'MARIA DE LOURDES VARGAS JUÁREZ','email' => 'lulisvarjua@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '131'])->assignRole('Editor');
        User::create(['name' => 'JOSÉ ANTONIO LÓPEZ HERNÁNDEZ','email' => 'jossen_82@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '142'])->assignRole('Editor');
        User::create(['name' => 'JASON SOTO HERRERA','email' => 'jasonsoto_122@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '30'])->assignRole('Editor');
        User::create(['name' => 'LUIS ENRIQUE RUFINO CUEVAS','email' => 'artes-upv2018@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '33'])->assignRole('Editor');
        User::create(['name' => 'MARÍA DEL CARMEN HERNANDEZ ROSAS','email' => 'mely_h3r769@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '108'])->assignRole('Editor');
        User::create(['name' => 'MARÍA DEL CARMEN HERNÁNDEZ ROSAS','email' => 'mely_h3r768@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '58'])->assignRole('Editor');
        User::create(['name' => 'TOMAS VIVEROS DE LA LUZ','email' => 'tomyviver85@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '170'])->assignRole('Editor');
        User::create(['name' => 'YESICA MARITZA TRINIDAD CANO','email' => 'yesicamaritza95@outlook.com','password' => Hash::make('321321'), 'id_delegacion' => '79'])->assignRole('Editor');
        User::create(['name' => 'MILTON JAVIER MARTÍNEZ ORTEGA','email' => 'milton_24@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '23'])->assignRole('Editor');
        User::create(['name' => 'SERGIO HERNANDEZ MENDOZA','email' => 'cergi23_@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '151'])->assignRole('Editor');
        User::create(['name' => 'VICTOR PERALTA SOLÍS','email' => 'v.peralta2014@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '66'])->assignRole('Editor');
        User::create(['name' => 'SOLEDAD GARCIA LOBO','email' => 'garcisol1973@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '88'])->assignRole('Editor');
        User::create(['name' => 'PATRICIA CARRASCO HERNÁNDEZ','email' => 'paty_cardz@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '78'])->assignRole('Editor');
        User::create(['name' => 'SANDINO GABRIEL SANTOS AYALA','email' => 'sandinogabriel@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '48'])->assignRole('Editor');
        User::create(['name' => 'LESTER BALAM PEREZ GARCIA','email' => 'lesjaguar@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '36'])->assignRole('Editor');
        User::create(['name' => 'ÁNGEL MANUEL CAMPOS PACHECO','email' => 'angelmanuelcampospacheco@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '14'])->assignRole('Editor');
        User::create(['name' => 'AGRIPINO ARGÜELLES ARGÜELLES','email' => 'agripinoarar@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '25'])->assignRole('Editor');
        User::create(['name' => 'RUTH MARÍA PAVÁN SALOMÓN','email' => 'pasaruth@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '123'])->assignRole('Editor');
        User::create(['name' => 'LUIS FERNANDO CABRERA VILLEGAS','email' => 'fercabvill2@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '110'])->assignRole('Editor');
        User::create(['name' => 'GRACIELA AIDA PAVÓN ARMENTA','email' => 'gapavon@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '84'])->assignRole('Editor');
        User::create(['name' => 'MIGUEL ANGEL VAZQUEZ VAZQUEZ','email' => 'vazquezvazquezmiguel912@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '45'])->assignRole('Editor');
        User::create(['name' => 'RAMON FERNANDEZ MATEOS','email' => 'ramonfernandez3108@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '122'])->assignRole('Editor');
        User::create(['name' => 'ISMAEL LOPEZ CABALLERO','email' => 'struendo1986@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '104'])->assignRole('Editor');
        User::create(['name' => 'LORENA CHIUNTI REYES','email' => 'lorenchiu@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '63'])->assignRole('Editor');
        User::create(['name' => 'BRENDA LUCIA SANTIAGO MEDINA','email' => 'bennylu_santi@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '29'])->assignRole('Editor');
        User::create(['name' => 'RUTH ABURTO MONTALVO','email' => 'ruthaburtomontalvo@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '89'])->assignRole('Editor');
        User::create(['name' => 'EUSTOLIO YEPEZ LUNA','email' => 'e_yepez@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '145'])->assignRole('Editor');
        User::create(['name' => 'RICARDO ADOLFO ZIENER RUISECO','email' => 'bastian_ozil@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '68'])->assignRole('Editor');
        User::create(['name' => 'FLOR MODESTA MATÍAS HERNÁNDEZ','email' => 'flormh.0210@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '37'])->assignRole('Editor');
        User::create(['name' => 'IRMA ARACELI OVANDO MARTÍNEZ','email' => 'oami750520@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '156'])->assignRole('Editor');
        User::create(['name' => 'FÉLIX MAYO RODRÍGUEZ','email' => 'fmr306@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '115'])->assignRole('Editor');
        User::create(['name' => 'ROBERTO ALEJANDRO NORIEGA LAGUNAS','email' => 'noriegaroberto@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '103'])->assignRole('Editor');
        User::create(['name' => 'MANUEL CLEMENTE LÓPEZ VELÁZQUEZ','email' => 'mclopez76@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '140'])->assignRole('Editor');
        User::create(['name' => 'KARLA QUETZALLI HERNÁNDEZ ANDREW','email' => 'selketescorpion@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '41'])->assignRole('Editor');
        User::create(['name' => 'EDGAR SÁNCHEZ AGUAS','email' => 'd165zong@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '65'])->assignRole('Editor');
        User::create(['name' => 'KARLA JANETTE RIVADENEYRA MEJIA','email' => 'karlita_riva@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '55'])->assignRole('Editor');
        User::create(['name' => 'RAUL PIÑA ORTIZ','email' => 'rulimpio@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '10'])->assignRole('Editor');
        User::create(['name' => 'VICTOR HUGO ZEPAHUA MONTALVO','email' => 'hugozm1486@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '54'])->assignRole('Editor');
        User::create(['name' => 'PEDRO MÁRQUEZ ','email' => 'pedromarquezgriss@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '153'])->assignRole('Editor');
        User::create(['name' => 'HORACIO CORTINA ROCHA','email' => 'corttynna@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '163'])->assignRole('Editor');
        User::create(['name' => 'GASPAR FERNANDEZ GUZMAN','email' => 'ferguz3104@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '5'])->assignRole('Editor');
        User::create(['name' => 'MIRIAM FÉLIX CANTU','email' => 'pichis65@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '92'])->assignRole('Editor');
        User::create(['name' => 'TATIANA PARDIÑAS CUERVO','email' => 'tatilehi@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '90'])->assignRole('Editor');
        User::create(['name' => 'ALBERTO TRINIDAD FLORES','email' => 'soyhuasteco@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '87'])->assignRole('Editor');
        User::create(['name' => 'JOSAFAT MARTINEZ RODRIGUEZ','email' => 'josamr17@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '111'])->assignRole('Editor');
        User::create(['name' => 'JOSÉ DOMINGO BADIANO RUÍZ','email' => 'tebadianodom@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '120'])->assignRole('Editor');
        User::create(['name' => 'JORGE ROJAS GATICA','email' => 'jorge_rojasgatica@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '3'])->assignRole('Editor');
        User::create(['name' => 'SILVINO ARMANDO MORALES AGUILAR','email' => 'silarmoa@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '157'])->assignRole('Editor');
        User::create(['name' => 'MARIA JUDITH CORONADO MALDONADO','email' => 'mariajudithcoronado1977@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '91'])->assignRole('Editor');
        User::create(['name' => 'LEONOR SÁNCHEZ ARGUELLES','email' => 'leosarle77@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '44'])->assignRole('Editor');
        User::create(['name' => 'DIEGO IGNACIO HERRERA AGUILAR','email' => 'lef_diegoherrera@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '168'])->assignRole('Editor');
        User::create(['name' => 'XOCHITL EDUVIGES AGUILAR LOPEZ','email' => 'agloxe@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '64'])->assignRole('Editor');
        User::create(['name' => 'MARCO ANTONIO PÉREZ RODRÍGUEZ','email' => 'emilianozapata1971@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '132'])->assignRole('Editor');
        User::create(['name' => 'PATRICIA MARIA GAMBOA BELLO','email' => 'patymgb77@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '107'])->assignRole('Editor');
        User::create(['name' => 'ERNESTO NOÉ RODRÍGUEZ RAMÍREZ','email' => 'zerimarnoe3@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '51'])->assignRole('Editor');
        User::create(['name' => 'DELMAR ORELLAN LANDA','email' => 'delmar17@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '109'])->assignRole('Editor');
        User::create(['name' => 'LEON HERVERT AHUMADA','email' => 'primguadalupevictoria@outlook.com','password' => Hash::make('321321'), 'id_delegacion' => '52'])->assignRole('Editor');
        User::create(['name' => 'ARNULFO ALBERTO SÁNCHEZ MADERO','email' => 'aasanchez@msev.gob.mx','password' => Hash::make('321321'), 'id_delegacion' => '160'])->assignRole('Editor');
        User::create(['name' => 'ELSA ANDREA MALDONADO ALEMÁN','email' => 'cucsiandrea@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '118'])->assignRole('Editor');
        User::create(['name' => 'ZENAIDA ALICIA SANTIAGO ALVARADO','email' => 'zenaida69@hotmail.es','password' => Hash::make('321321'), 'id_delegacion' => '7'])->assignRole('Editor');
        User::create(['name' => 'ESMERALDA FIERRO GALVAN','email' => 'yayis18figa@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '39'])->assignRole('Editor');
        User::create(['name' => 'DARIO RODRIGUEZ RESENDIZ','email' => 'tauro27_6@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '169'])->assignRole('Editor');
        User::create(['name' => 'MIRSA ELEM TERRAZAS SALGADO','email' => 'mirsaelem27@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '137'])->assignRole('Editor');
        User::create(['name' => 'JOSE MANUEL TRINIDAD MOLINA','email' => 'pichomania.jmtm@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '6'])->assignRole('Editor');
        User::create(['name' => 'CLAUDIA NOTARIO ROJAS','email' => 'notario29@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '97'])->assignRole('Editor');
        User::create(['name' => 'ERIKA JIMÉNEZ ROMÁN','email' => 'jrpeque@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '56'])->assignRole('Editor');
        User::create(['name' => 'MARISOL MORALES SANCHEZ','email' => 'solecito.074@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '81'])->assignRole('Editor');
        User::create(['name' => 'GLORIA ALMORA SANTIAGO','email' => 'ceciliaalmora@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '61'])->assignRole('Editor');
        User::create(['name' => 'SARA EUGENIA GARCÍA SÁNCHEZ','email' => 'saraeugeniagarcia@hotmail.com.mx','password' => Hash::make('321321'), 'id_delegacion' => '72'])->assignRole('Editor');
        User::create(['name' => 'ALONSO CAMILO NOVOA GASTALDI','email' => 'alonsogastaldi@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '53'])->assignRole('Editor');
        User::create(['name' => 'MARISOL SANCHEZ HERNÁNDEZ','email' => 'kiwinota_sol@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '155'])->assignRole('Editor');
        User::create(['name' => 'MARCO ANTONIO SÁNCHEZ CAMACHO','email' => 'adry_8@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '11'])->assignRole('Editor');
        User::create(['name' => 'ROSALINO GABINO LAGUNES SALAS','email' => 'lasrog@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '34'])->assignRole('Editor');
        User::create(['name' => 'MIRIAM MENDEZ MORENO','email' => 'mayrim_capri294@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '176'])->assignRole('Editor');
        User::create(['name' => 'ALBERTO BAIZABAL HUERTA','email' => 'aimarbaiza@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '75'])->assignRole('Editor');
        User::create(['name' => 'VIRGINIA MIRANDA GUZMÁN','email' => 'soymirandaguz@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '175'])->assignRole('Editor');
        User::create(['name' => 'MÓNICA SUSANA HERRERA CORONA','email' => 'herreramonicasusana@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '20'])->assignRole('Editor');
        User::create(['name' => 'JONATAN EBER GARCÉS REYES','email' => 'jonagareyes@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '98'])->assignRole('Editor');
        User::create(['name' => 'JUAN ITURBIDE MEUNIER','email' => 'juaniturbide361@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '194'])->assignRole('Editor');
        User::create(['name' => 'SANDRA LUZ VEGA RAMÍREZ','email' => 'sandraluzvegaramirez1958@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '185'])->assignRole('Editor');
        User::create(['name' => 'LUCIO LARA DEL ÁNGEL','email' => 'lara02006@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '204'])->assignRole('Editor');
        User::create(['name' => 'GREGORIO SILVERIO HERNÁNDEZ REYES','email' => 'gregoriohernandezreyes54@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '184'])->assignRole('Editor');
        User::create(['name' => 'JESÚS DAVID MORALES LÓPEZ','email' => 'iguasol@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '181'])->assignRole('Editor');
        User::create(['name' => 'MANUELA FLORINDA SANTOS ZETINA','email' => 'maflorsagi@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '179'])->assignRole('Editor');
        User::create(['name' => 'MARÍA EUGENIA LINARES SANTOS','email' => 'marilina64@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '202'])->assignRole('Editor');
        User::create(['name' => 'FELICIANO SILVA ALMENDRA','email' => 'silvaalfe@yahoo.com.mx','password' => Hash::make('321321'), 'id_delegacion' => '182'])->assignRole('Editor');
        User::create(['name' => 'ERASMO DELGADO GUERRA','email' => 'delgadoeg15@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '208'])->assignRole('Editor');
        User::create(['name' => 'SUSANA MÉNDEZ GONZÁLEZ','email' => 'susan2_94@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '183'])->assignRole('Editor');
        User::create(['name' => 'AGUSTÍN FERNANDO LOZANO MALDONADO','email' => 'halconnegrogus@hotmail.es','password' => Hash::make('321321'), 'id_delegacion' => '193'])->assignRole('Editor');
        User::create(['name' => 'RAFAELA CABRERA OCHOA','email' => 'cabrerarafaela66@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '192'])->assignRole('Editor');
        User::create(['name' => 'JESÚS ALEJANDRO TLALPA REYES','email' => 'tlalpa241256@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '197'])->assignRole('Editor');
        User::create(['name' => 'ESTHER SIXTA BOEHLER SUÁREZ','email' => 'maestra_boehler@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '178'])->assignRole('Editor');
        User::create(['name' => 'CÉSAR ORTEGA RAMÍREZ','email' => 'ortegaramirez_cesar@yahoo.com.mx','password' => Hash::make('321321'), 'id_delegacion' => '189'])->assignRole('Editor');
        User::create(['name' => 'OSCAR MÉNDEZ HERNÁNDEZ','email' => 'oscmendher@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '218'])->assignRole('Editor');
        User::create(['name' => 'MARTIN JOSAFAT MORALES ALONSO','email' => 'josafatmorales68@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '233'])->assignRole('Editor');
        User::create(['name' => 'MELINA DEL ANGEL RAMOS','email' => 'mely_dar@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '222'])->assignRole('Editor');
        User::create(['name' => 'JUAN CARLOS GARCÍA ESTEVEZ','email' => 'carlosgaest@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '225'])->assignRole('Editor');
        User::create(['name' => 'JOSÉ MIGUEL RUMAYOR ZACARIAS','email' => 'jmrz1804@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '238'])->assignRole('Editor');
        User::create(['name' => 'ANA MARÍA DEL CARMEN BLANCO MENDOZA','email' => 'anablanco82961@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '244'])->assignRole('Editor');
        User::create(['name' => 'JOSÉ ANTONIO SUÁREZ GÁLVEZ','email' => 'suarezgalvezjoseantonio@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '230'])->assignRole('Editor');
        User::create(['name' => 'ENRIQUE RAFAEL CHESTY VIVEROS','email' => 'enrique_chesty@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '216'])->assignRole('Editor');
        User::create(['name' => 'ESTEPHANI JOSEPHA BARRADAS ROJAS','email' => 'rojaspormama@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '231'])->assignRole('Editor');
        User::create(['name' => 'ARMANDO RUIZ MORALES','email' => 'armando_ruiz21@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '226'])->assignRole('Editor');
        User::create(['name' => 'ANA LINE MEZA PÉREZ','email' => 'linemeza@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '223'])->assignRole('Editor');
        User::create(['name' => 'DIEGO ARMANDO SÁNCHEZ FERNÁNDEZ','email' => 'geniussom84@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '245'])->assignRole('Editor');
        User::create(['name' => 'EZEQUIEL ORTEGA GARCÍA','email' => 'garciacheque@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '241'])->assignRole('Editor');
        User::create(['name' => 'DANIEL CEQUERA HERVERT','email' => 'dazulc@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '220'])->assignRole('Editor');
        User::create(['name' => 'ROCÍO DEL MAR RAMÍREZ PADILLA','email' => 'mar.ramirezp84@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '240'])->assignRole('Editor');
        User::create(['name' => 'WENDY BLANCO MORALES','email' => 'wblanco@msev.gob.mx','password' => Hash::make('321321'), 'id_delegacion' => '242'])->assignRole('Editor');
        User::create(['name' => 'GUILLERMINA PARRA LOZANO','email' => 'guilleplsnte@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '243'])->assignRole('Editor');
        User::create(['name' => 'CÉSAR VALENZUELA VÁZQUEZ','email' => 'goodloocky@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '234'])->assignRole('Editor');
        User::create(['name' => 'PORFIRIO ANTONIO MARTINEZ','email' => 'piyoyosabanero1@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '28'])->assignRole('Editor');
        User::create(['name' => 'FRANCISCO CHI FABIAN','email' => 'fchifabian@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '2'])->assignRole('Editor');
        User::create(['name' => 'FRANCISCO ARRIAGA SANCHEZ','email' => 'frank_escorpion965@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '119'])->assignRole('Editor');
        User::create(['name' => 'CAROLINA TENORIO DÍAZ','email' => 'catedi1120@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '31'])->assignRole('Editor');
        User::create(['name' => 'JOSÉ ALBERTO CÁRDENAS RODRÍGUEZ','email' => 'cardenas566@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '17'])->assignRole('Editor');
        User::create(['name' => 'JUAN MATEO MARTINEZ FLORES','email' => 'juanmateomartinezflores@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '26'])->assignRole('Editor');
        User::create(['name' => 'FELIPE GÓMEZ QUINTERO','email' => 'qfelipeg@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '95'])->assignRole('Editor');
        User::create(['name' => 'JAVIER HERNANDEZ HERNANDEZ','email' => 'segundogrado1819@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '4'])->assignRole('Editor');
        User::create(['name' => 'CAROLINA SALINAS LÓPEZ','email' => 'carolina_salinas@rocketmail.com','password' => Hash::make('321321'), 'id_delegacion' => '1'])->assignRole('Editor');
        User::create(['name' => 'MARIANA MARANTO BECERRA','email' => 'marianamarano@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '83'])->assignRole('Editor');
        User::create(['name' => 'MARÍA DEL CARMEN SÁNCHEZ RAMOS','email' => 'krmenazul13@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '173'])->assignRole('Editor');
        User::create(['name' => 'MANUEL ROJAS PIMENTEL','email' => 'tigres_manuel7865@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '22'])->assignRole('Editor');
        User::create(['name' => 'ILCE SARAI COUTIÑO ARELLANO','email' => 'ilsacoar66@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '86'])->assignRole('Editor');
        User::create(['name' => 'BENY RAFAEL GALICIA OLIVARES','email' => 'rafael_1979@hotmail.es','password' => Hash::make('321321'), 'id_delegacion' => '69'])->assignRole('Editor');
        User::create(['name' => 'FELIPE DE JESÚS SOSA LÓPEZ','email' => 'phillip1274@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '16'])->assignRole('Editor');
        User::create(['name' => 'ELSA MADAHI SANTES PAREDES','email' => 'elsama.santes@msev.gob.mx','password' => Hash::make('321321'), 'id_delegacion' => '141'])->assignRole('Editor');
        User::create(['name' => 'JOSÉ LUIS HERNÁNDEZ HERNÁNDEZ','email' => 'jose_lef_16107@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '164'])->assignRole('Editor');
        User::create(['name' => 'SELENE RIQUE NOLASCO','email' => 'selenerique@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '138'])->assignRole('Editor');
        User::create(['name' => 'XOCHITL PATRICIA RUCABADO HERRERA','email' => 'patricia140370@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '146'])->assignRole('Editor');
        User::create(['name' => 'ELIZABETH BLANCO CADENA','email' => 'eliblac20@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '117'])->assignRole('Editor');
        User::create(['name' => 'CRISTAL SAGAHÓN SÁNCHEZ','email' => 'cristalsagahon82@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '24'])->assignRole('Editor');
        User::create(['name' => 'ISMAEL RODRIGUEZ LOPEZ','email' => 'maysorverjeny@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '40'])->assignRole('Editor');
        User::create(['name' => 'ORLANDO HERNANDEZ DEL ANGEL','email' => 'snte56primariasespinal@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '21'])->assignRole('Editor');
        User::create(['name' => 'GEORGINA RAGA RIVERA','email' => 'gina_rr59@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '85'])->assignRole('Editor');
        User::create(['name' => 'ALFREDO BLAS ORTIZ','email' => 'alfredo.blas@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '46'])->assignRole('Editor');
        User::create(['name' => 'LYSSETTE YAZMÍN ESTHER HUERTA TRUJILLO','email' => 'lyssyeht@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '67'])->assignRole('Editor');
        User::create(['name' => 'JUANA ELIZABETH GOMEZ AEDO','email' => 'elygomez42@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '12'])->assignRole('Editor');
        User::create(['name' => 'JORGE REYES SÁNCHEZ','email' => 'reyes_j@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '135'])->assignRole('Editor');
        User::create(['name' => 'SANDRA MIRETH SALDAÑA ROMÁN','email' => 'sandra_0310s@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '113'])->assignRole('Editor');
        User::create(['name' => 'VICENTE TADEO BAUTISTA','email' => 'tadeo58.js@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '49'])->assignRole('Editor');
        User::create(['name' => 'ERIKA RIOS SANTIAGO','email' => 'acueri12@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '59'])->assignRole('Editor');
        User::create(['name' => 'CARLOS ALBERTO COBOS PEREDA','email' => 'cacobos@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '139'])->assignRole('Editor');
        User::create(['name' => 'CLAUDIA LUCIA ARIAS RIVERA','email' => 'claunef_22@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '174'])->assignRole('Editor');
        User::create(['name' => 'YAJAIRA VILLALOBOS LÓPEZ','email' => 'yaki_lv17382@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '32'])->assignRole('Editor');
        User::create(['name' => 'ISIDORO ORTEGA SÁNCHEZ','email' => 'lolo_ortega80@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '18'])->assignRole('Editor');
        User::create(['name' => 'LAURA SUSANO LINO','email' => 'oinrocirpac@live.com.mx','password' => Hash::make('321321'), 'id_delegacion' => '150'])->assignRole('Editor');
        User::create(['name' => 'MELISSA ALDANA PAZ','email' => 'mely.sgam@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '76'])->assignRole('Editor');
        User::create(['name' => 'LADY ARIADNA PÉREZ AZUARA','email' => 'laryteacher@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '42'])->assignRole('Editor');
        User::create(['name' => 'RAÚL CAAMAÑO PUEBLA','email' => 'puebla-r@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '15'])->assignRole('Editor');
        User::create(['name' => 'ARVED ZÁRATE MORALES','email' => 'zamoa_80@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '154'])->assignRole('Editor');
        User::create(['name' => 'JOSÉ BORREGO LOYA','email' => 'jose_borrego1960@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '188'])->assignRole('Editor');
        User::create(['name' => 'VICENTE GUTIÉRREZ GONZÁLEZ','email' => 'vicenteupv@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '201'])->assignRole('Editor');
        User::create(['name' => 'MARÍA MIRSA LÓPEZ RAMÍREZ','email' => 'a.sri.m@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '195'])->assignRole('Editor');
        User::create(['name' => 'ADELA IZAZAGA MENDIOLA','email' => 'adeiza0211@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '186'])->assignRole('Editor');
        User::create(['name' => 'MIGUEL ANGEL BETANCOURT MARTINEZ','email' => 'miguelbetancourt781@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '207'])->assignRole('Editor');
        User::create(['name' => 'ROSARIO MORA CONTRERAS','email' => 'higiniolunamora@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '191'])->assignRole('Editor');
        User::create(['name' => 'FRANCISCO JAVIÉR GUTIÉRREZ HERNÁNDEZ','email' => 'fjgutierrez753@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '214'])->assignRole('Editor');
        User::create(['name' => 'ZULMA HIPOLITO PATRICIO RUSSELL','email' => 'zulaka3@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '239'])->assignRole('Editor');
        User::create(['name' => 'FELIPE TORRALVA GARCIA','email' => 'torralva19@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '235'])->assignRole('Editor');
        User::create(['name' => 'MIGUEL DARIO CUBILLOS GUILLÉN','email' => 'mdariocg@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '236'])->assignRole('Editor');
        User::create(['name' => 'IMELDA CRUZ SANROMAN','email' => 'ime1966@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '221'])->assignRole('Editor');
        User::create(['name' => 'EUFRACIA ROMERO LUGO','email' => 'eufraciaromero_lugo60@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '212'])->assignRole('Editor');
        User::create(['name' => 'JAQUELINE JIMÉNEZ PADILLA','email' => 'jackirudi72_77@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '62'])->assignRole('Editor');
        User::create(['name' => 'MARCO ANTONIO MOLINA GARCÍA','email' => 'osohandballcarrillo@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '166'])->assignRole('Editor');
        User::create(['name' => 'AIDA VELASQUEZ AMECA','email' => 'aida_doka@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '96'])->assignRole('Editor');
        User::create(['name' => 'JORGE ARMANDO RIVERA MEZA','email' => 'jarm_1979@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '161'])->assignRole('Editor');
        User::create(['name' => 'VERA NAHIELY MARÍN AGUIRRE','email' => 'maguivn@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '149'])->assignRole('Editor');
        User::create(['name' => 'LUIS ANTONIO BECERRA MENDOZA','email' => 'labm108@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '47'])->assignRole('Editor');
        User::create(['name' => 'MANUEL LAGUNES PÉREZ','email' => 'lagunes_111105@live.com.mx','password' => Hash::make('321321'), 'id_delegacion' => '121'])->assignRole('Editor');
        User::create(['name' => 'AZARET YURAID SOSA SELVAS','email' => 'sosa-aza@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '159'])->assignRole('Editor');
        User::create(['name' => 'ISA SIGREY CRUZ LOPEZ','email' => 'isa_sigrey@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '162'])->assignRole('Editor');
        User::create(['name' => 'OSVALDO REYES ARANO','email' => 'osvaldo_rea@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '124'])->assignRole('Editor');
        User::create(['name' => 'ROSALBA DEL CARMEN ROSAS CHÁVEZ','email' => 'rosalba_johan@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '70'])->assignRole('Editor');
        User::create(['name' => 'LUIS MANUEL SOLER NIETO','email' => 'luigi_8@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '172'])->assignRole('Editor');
        User::create(['name' => 'MARTIN PEREZ NAVARRO','email' => 'perez_m2_6@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '210'])->assignRole('Editor');
        User::create(['name' => 'ANGEL DEL RIBERO MARTÍNEZ','email' => 'angeldelr@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '229'])->assignRole('Editor');
        User::create(['name' => 'JOYNNERY ISABEL VERGARA LUNA','email' => 'email1@example.com','password' => Hash::make('321321'), 'id_delegacion' => '99'])->assignRole('Editor');
        User::create(['name' => 'ELIZABETH TORRES ULLOA','email' => 'email2@example.com','password' => Hash::make('321321'), 'id_delegacion' => '224'])->assignRole('Editor');
        User::create(['name' => 'BARBARA CONCEPCION PIÑA CASTRO','email' => 'bcpinacastro@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '211'])->assignRole('Editor');
        User::create(['name' => 'LILLIAN SUSET CHÁVEZ CERECEDO','email' => 'lisuchace@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '112'])->assignRole('Editor');
        User::create(['name' => 'IRENE CASTRO FERTO','email' => 'irecafer@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '203'])->assignRole('Editor');
        User::create(['name' => 'EULALIA ÁLVAREZ ROJAS','email' => 'lalitaalbarez2009@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '199'])->assignRole('Editor');
                


            
    
    
    
    
    
    
    
    }
}
