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

        User::create(['name' => 'VICENTE JUAREZ ALARCON','email' => 'juarez.vic@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '1','slug'=>'vicente-juarez-alarcon'])->assignRole('Administrador');
        User::create(['name' => 'ISRAEL LANDA ORTIZ','email' => 'ilanda@email.com','password' => Hash::make('321321'), 'id_delegacion' => '1','slug'=>'israel-landa-ortiz'])->assignRole('Supervisor');
        User::create(['name' => 'ABEL MENDOZA CONDADO','email' => 'amendoza@email.com','password' => Hash::make('321321'), 'id_delegacion' => '1','slug'=>'abel-mendoza-condado'])->assignRole('Supervisor');
        User::create(['name' => 'HÉCTOR MIGUEL TORRES PÉREZ','email' => 'migueltorres830607@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '1','slug'=>'héctor-miguel-torres-pérez'])->assignRole('Supervisor');
        User::create(['name' => 'JOSÉ GUADALUPE MUÑOZ REYES','email' => 'jose.guadamur78@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '1','slug'=>'josé-guadalupe-muñoz-reyes'])->assignRole('Supervisor');
        User::create(['name' => 'JUAN MARTÍNEZ ACOSTA','email' => 'acostajuan1380.ja@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '1','slug'=>'juan-martínez-acosta'])->assignRole('Supervisor');
        User::create(['name' => 'SERGIO MARTÍNEZ MORATO','email' => 'moratoser77@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '1','slug'=>'sergio-martínez-morato'])->assignRole('Supervisor');
        User::create(['name' => 'DORA CAROLINA LAGUNES DÍAZ','email' => 'carolain_12@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '1','slug'=>'dora-carolina-lagunes-díaz'])->assignRole('Supervisor');
        User::create(['name' => 'LUIS EDUARDO CHÁVEZ ROJO','email' => 'rojo_le@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '1','slug'=>'luis-eduardo-chávez-rojo'])->assignRole('Supervisor');
        User::create(['name' => 'RAMIRO MONTESINOS TRUJILLO','email' => 'redli@live.com.mx','password' => Hash::make('321321'), 'id_delegacion' => '1','slug'=>'ramiro-montesinos-trujillo'])->assignRole('Supervisor');
        User::create(['name' => 'PORFIRIO GUTIÉRREZ LÓPEZ','email' => 'madajoev@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '1','slug'=>'porfirio-gutiérrez-lópez'])->assignRole('Supervisor');
        User::create(['name' => 'JOSÉ DE JESÚS SÁNCHEZ SERMAN','email' => 'licserman2009@live.com.mx','password' => Hash::make('321321'), 'id_delegacion' => '1','slug'=>'josé-de-jesús-sánchez-serman'])->assignRole('Supervisor');
        User::create(['name' => 'FRANCISCO CILIAS SUSUNAGA','email' => 'cilias_susunaga@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '1','slug'=>'francisco-cilias-susunaga'])->assignRole('Supervisor');
        User::create(['name' => 'LUIS ARMANDO LÓPEZ ALVARADO','email' => 'luisbachis@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '1','slug'=>'luis-armando-lópez-alvarado'])->assignRole('Supervisor');
        User::create(['name' => 'LUIS EUSEBIO USCANGA OCHOA','email' => 'lefnegrito@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '171','slug'=>'luis-eusebio-uscanga-ochoa'])->assignRole('Editor');
        User::create(['name' => 'LUÍS ALFREDO HERRERA HERNÁNDEZ','email' => 'snte56d-ii-59panuco@outlook.com','password' => Hash::make('321321'), 'id_delegacion' => '152','slug'=>'luís-alfredo-herrera-hernández'])->assignRole('Editor');
        User::create(['name' => 'JORGE LUIS BERNABE GARCIA','email' => 'jlberna_18@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '165','slug'=>'jorge-luis-bernabe-garcia'])->assignRole('Editor');
        User::create(['name' => 'PÁVEL ISRAEL GARCÍA GÓMEZ','email' => 'pavelisraelgarciagomez@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '114','slug'=>'pável-israel-garcía-gómez'])->assignRole('Editor');
        User::create(['name' => 'BEATRIZ OLIVIA BARRADAS GONZÁLEZ','email' => 'beatriz.bar.71@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '77','slug'=>'beatriz-olivia-barradas-gonzález'])->assignRole('Editor');
        User::create(['name' => 'ROBERTO CARLOS GARCÍA ALEJANDRE','email' => 'alejandreroca@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '94','slug'=>'roberto-carlos-garcía-alejandre'])->assignRole('Editor');
        User::create(['name' => 'IRIS CRISTAL CAMARERO PRIEGO','email' => 'pink082484@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '8','slug'=>'iris-cristal-camarero-priego'])->assignRole('Editor');
        User::create(['name' => 'JAVIER MALERVA MARTÍNEZ','email' => 'javiermalerva80@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '9','slug'=>'javier-malerva-martínez'])->assignRole('Editor');
        User::create(['name' => 'ANA ISABEL SALAZAR MARTÍNEZ','email' => 'samaranai1@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '116','slug'=>'ana-isabel-salazar-martínez'])->assignRole('Editor');
        User::create(['name' => 'ENRIQUE LUNA MUÑOZ','email' => 'prof.luna@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '125','slug'=>'enrique-luna-muñoz'])->assignRole('Editor');
        User::create(['name' => 'JESÚS DEL ÁNGEL ROBLES','email' => 'chuzo_2008@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '129','slug'=>'jesús-del-ángel-robles'])->assignRole('Editor');
        User::create(['name' => 'TONATIU GARCIA AMADOR','email' => 'tonanzin17@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '147','slug'=>'tonatiu-garcia-amador'])->assignRole('Editor');
        User::create(['name' => 'KARLA ANGELICA VALERIO PAZ','email' => 'profra.vp@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '57','slug'=>'karla-angelica-valerio-paz'])->assignRole('Editor');
        User::create(['name' => 'EMMANUEL OBANDO PEREZ','email' => 'obando.83@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '35','slug'=>'emmanuel-obando-perez'])->assignRole('Editor');
        User::create(['name' => 'MARIO HERVIN SOSA SOSA','email' => 'mariohervin@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '19','slug'=>'mario-hervin-sosa-sosa'])->assignRole('Editor');
        User::create(['name' => 'JOSÉ DANIEL LOYA ROSAS','email' => 'josedanielloyarosas@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '38','slug'=>'josé-daniel-loya-rosas'])->assignRole('Editor');
        User::create(['name' => 'LUCAS BAUTISTA HERNANDEZ','email' => 'astaez1978@outlook.com','password' => Hash::make('321321'), 'id_delegacion' => '71','slug'=>'lucas-bautista-hernandez'])->assignRole('Editor');
        User::create(['name' => 'ELIZABETH ESCOBAR PERDOMO','email' => 'eli.escper@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '80','slug'=>'elizabeth-escobar-perdomo'])->assignRole('Editor');
        User::create(['name' => 'GABRIEL ROBERTO ZAVALA QUINTERO','email' => 'chaneque_zavala@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '144','slug'=>'gabriel-roberto-zavala-quintero'])->assignRole('Editor');
        User::create(['name' => 'JUAN CRUZ LAGUNES','email' => 'delboing_jcl@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '128','slug'=>'juan-cruz-lagunes'])->assignRole('Editor');
        User::create(['name' => 'KARINA LANDA RODRÍGUEZ','email' => 'karina.ne2008@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '60','slug'=>'karina-landa-rodríguez'])->assignRole('Editor');
        User::create(['name' => 'NIMBE ELISDATH FLORES ACOSTA','email' => 'braxton111@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '43','slug'=>'nimbe-elisdath-flores-acosta'])->assignRole('Editor');
        User::create(['name' => 'ASAID GARCÍA MARTÍNEZ','email' => 'gamasaid@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '93','slug'=>'asaid-garcía-martínez'])->assignRole('Editor');
        User::create(['name' => 'JOSÉ ANTONIO PREZA REYES','email' => 'snteeducacionfisica_mtz@outlook.com','password' => Hash::make('321321'), 'id_delegacion' => '167','slug'=>'josé-antonio-preza-reyes'])->assignRole('Editor');
        User::create(['name' => 'EDUARDO MIGUEL MONTALVO MARTÍNEZ','email' => 'kowboy_9@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '106','slug'=>'eduardo-miguel-montalvo-martínez'])->assignRole('Editor');
        User::create(['name' => 'MARIO ALBERTO ABURTO CANO','email' => 'cano241085@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '74','slug'=>'mario-alberto-aburto-cano'])->assignRole('Editor');
        User::create(['name' => 'ARMANDO RODRÍGUEZ HERNÁNDEZ','email' => 'rohea_2002@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '126','slug'=>'armando-rodríguez-hernández'])->assignRole('Editor');
        User::create(['name' => 'HABACUC VLADIMIR AGUILAR RAMÍREZ','email' => 'vlad_aguilarjr@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '136','slug'=>'habacuc-vladimir-aguilar-ramírez'])->assignRole('Editor');
        User::create(['name' => 'MARIA DE LOURDES VARGAS JUÁREZ','email' => 'lulisvarjua@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '131','slug'=>'maria-de-lourdes-vargas-juárez'])->assignRole('Editor');
        User::create(['name' => 'JOSÉ ANTONIO LÓPEZ HERNÁNDEZ','email' => 'jossen_82@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '142','slug'=>'josé-antonio-lópez-hernández'])->assignRole('Editor');
        User::create(['name' => 'JASON SOTO HERRERA','email' => 'jasonsoto_122@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '30','slug'=>'jason-soto-herrera'])->assignRole('Editor');
        User::create(['name' => 'LUIS ENRIQUE RUFINO CUEVAS','email' => 'artes-upv2018@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '33','slug'=>'luis-enrique-rufino-cuevas'])->assignRole('Editor');
        User::create(['name' => 'MARÍA DEL CARMEN HERNANDEZ ROSAS','email' => 'mely_h3r769@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '108','slug'=>'maría-del-carmen-hernandez-rosas'])->assignRole('Editor');
        User::create(['name' => 'MARÍA DEL CARMEN HERNÁNDEZ ROSAS','email' => 'mely_h3r768@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '58','slug'=>'maría-del-carmen-hernández-rosas'])->assignRole('Editor');
        User::create(['name' => 'TOMAS VIVEROS DE LA LUZ','email' => 'tomyviver85@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '170','slug'=>'tomas-viveros-de-la-luz'])->assignRole('Editor');
        User::create(['name' => 'YESICA MARITZA TRINIDAD CANO','email' => 'yesicamaritza95@outlook.com','password' => Hash::make('321321'), 'id_delegacion' => '79','slug'=>'yesica-maritza-trinidad-cano'])->assignRole('Editor');
        User::create(['name' => 'MILTON JAVIER MARTÍNEZ ORTEGA','email' => 'milton_24@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '23','slug'=>'milton-javier-martínez-ortega'])->assignRole('Editor');
        User::create(['name' => 'SERGIO HERNANDEZ MENDOZA','email' => 'cergi23_@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '151','slug'=>'sergio-hernandez-mendoza'])->assignRole('Editor');
        User::create(['name' => 'VICTOR PERALTA SOLÍS','email' => 'v.peralta2014@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '66','slug'=>'victor-peralta-solís'])->assignRole('Editor');
        User::create(['name' => 'SOLEDAD GARCIA LOBO','email' => 'garcisol1973@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '88','slug'=>'soledad-garcia-lobo'])->assignRole('Editor');
        User::create(['name' => 'PATRICIA CARRASCO HERNÁNDEZ','email' => 'paty_cardz@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '78','slug'=>'patricia-carrasco-hernández'])->assignRole('Editor');
        User::create(['name' => 'SANDINO GABRIEL SANTOS AYALA','email' => 'sandinogabriel@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '48','slug'=>'sandino-gabriel-santos-ayala'])->assignRole('Editor');
        User::create(['name' => 'LESTER BALAM PEREZ GARCIA','email' => 'lesjaguar@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '36','slug'=>'lester-balam-perez-garcia'])->assignRole('Editor');
        User::create(['name' => 'ÁNGEL MANUEL CAMPOS PACHECO','email' => 'angelmanuelcampospacheco@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '14','slug'=>'ángel-manuel-campos-pacheco'])->assignRole('Editor');
        User::create(['name' => 'AGRIPINO ARGÜELLES ARGÜELLES','email' => 'agripinoarar@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '25','slug'=>'agripino-argüelles-argüelles'])->assignRole('Editor');
        User::create(['name' => 'RUTH MARÍA PAVÁN SALOMÓN','email' => 'pasaruth@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '123','slug'=>'ruth-maría-paván-salomón'])->assignRole('Editor');
        User::create(['name' => 'LUIS FERNANDO CABRERA VILLEGAS','email' => 'fercabvill2@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '110','slug'=>'luis-fernando-cabrera-villegas'])->assignRole('Editor');
        User::create(['name' => 'GRACIELA AIDA PAVÓN ARMENTA','email' => 'gapavon@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '84','slug'=>'graciela-aida-pavón-armenta'])->assignRole('Editor');
        User::create(['name' => 'MIGUEL ANGEL VAZQUEZ VAZQUEZ','email' => 'vazquezvazquezmiguel912@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '45','slug'=>'miguel-angel-vazquez-vazquez'])->assignRole('Editor');
        User::create(['name' => 'RAMON FERNANDEZ MATEOS','email' => 'ramonfernandez3108@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '122','slug'=>'ramon-fernandez-mateos'])->assignRole('Editor');
        User::create(['name' => 'ISMAEL LOPEZ CABALLERO','email' => 'struendo1986@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '104','slug'=>'ismael-lopez-caballero'])->assignRole('Editor');
        User::create(['name' => 'LORENA CHIUNTI REYES','email' => 'lorenchiu@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '63','slug'=>'lorena-chiunti-reyes'])->assignRole('Editor');
        User::create(['name' => 'BRENDA LUCIA SANTIAGO MEDINA','email' => 'bennylu_santi@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '29','slug'=>'brenda-lucia-santiago-medina'])->assignRole('Editor');
        User::create(['name' => 'RUTH ABURTO MONTALVO','email' => 'ruthaburtomontalvo@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '89','slug'=>'ruth-aburto-montalvo'])->assignRole('Editor');
        User::create(['name' => 'EUSTOLIO YEPEZ LUNA','email' => 'e_yepez@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '145','slug'=>'eustolio-yepez-luna'])->assignRole('Editor');
        User::create(['name' => 'RICARDO ADOLFO ZIENER RUISECO','email' => 'bastian_ozil@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '68','slug'=>'ricardo-adolfo-ziener-ruiseco'])->assignRole('Editor');
        User::create(['name' => 'FLOR MODESTA MATÍAS HERNÁNDEZ','email' => 'flormh.0210@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '37','slug'=>'flor-modesta-matías-hernández'])->assignRole('Editor');
        User::create(['name' => 'IRMA ARACELI OVANDO MARTÍNEZ','email' => 'oami750520@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '156','slug'=>'irma-araceli-ovando-martínez'])->assignRole('Editor');
        User::create(['name' => 'FÉLIX MAYO RODRÍGUEZ','email' => 'fmr306@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '115','slug'=>'félix-mayo-rodríguez'])->assignRole('Editor');
        User::create(['name' => 'ROBERTO ALEJANDRO NORIEGA LAGUNAS','email' => 'noriegaroberto@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '103','slug'=>'roberto-alejandro-noriega-lagunas'])->assignRole('Editor');
        User::create(['name' => 'MANUEL CLEMENTE LÓPEZ VELÁZQUEZ','email' => 'mclopez76@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '140','slug'=>'manuel-clemente-lópez-velázquez'])->assignRole('Editor');
        User::create(['name' => 'KARLA QUETZALLI HERNÁNDEZ ANDREW','email' => 'selketescorpion@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '41','slug'=>'karla-quetzalli-hernández-andrew'])->assignRole('Editor');
        User::create(['name' => 'EDGAR SÁNCHEZ AGUAS','email' => 'd165zong@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '65','slug'=>'edgar-sánchez-aguas'])->assignRole('Editor');
        User::create(['name' => 'KARLA JANETTE RIVADENEYRA MEJIA','email' => 'karlita_riva@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '55','slug'=>'karla-janette-rivadeneyra-mejia'])->assignRole('Editor');
        User::create(['name' => 'RAUL PIÑA ORTIZ','email' => 'rulimpio@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '10','slug'=>'raul-piña-ortiz'])->assignRole('Editor');
        User::create(['name' => 'VICTOR HUGO ZEPAHUA MONTALVO','email' => 'hugozm1486@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '54','slug'=>'victor-hugo-zepahua-montalvo'])->assignRole('Editor');
        User::create(['name' => 'PEDRO MÁRQUEZ ','email' => 'pedromarquezgriss@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '153','slug'=>'pedro-márquez'])->assignRole('Editor');
        User::create(['name' => 'HORACIO CORTINA ROCHA','email' => 'corttynna@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '163','slug'=>'horacio-cortina-rocha'])->assignRole('Editor');
        User::create(['name' => 'GASPAR FERNANDEZ GUZMAN','email' => 'ferguz3104@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '5','slug'=>'gaspar-fernandez-guzman'])->assignRole('Editor');
        User::create(['name' => 'MIRIAM FÉLIX CANTU','email' => 'pichis65@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '92','slug'=>'miriam-félix-cantu'])->assignRole('Editor');
        User::create(['name' => 'TATIANA PARDIÑAS CUERVO','email' => 'tatilehi@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '90','slug'=>'tatiana-pardiñas-cuervo'])->assignRole('Editor');
        User::create(['name' => 'ALBERTO TRINIDAD FLORES','email' => 'soyhuasteco@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '87','slug'=>'alberto-trinidad-flores'])->assignRole('Editor');
        User::create(['name' => 'JOSAFAT MARTINEZ RODRIGUEZ','email' => 'josamr17@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '111','slug'=>'josafat-martinez-rodriguez'])->assignRole('Editor');
        User::create(['name' => 'JOSÉ DOMINGO BADIANO RUÍZ','email' => 'tebadianodom@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '120','slug'=>'josé-domingo-badiano-ruíz'])->assignRole('Editor');
        User::create(['name' => 'JORGE ROJAS GATICA','email' => 'jorge_rojasgatica@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '3','slug'=>'jorge-rojas-gatica'])->assignRole('Editor');
        User::create(['name' => 'SILVINO ARMANDO MORALES AGUILAR','email' => 'silarmoa@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '157','slug'=>'silvino-armando-morales-aguilar'])->assignRole('Editor');
        User::create(['name' => 'MARIA JUDITH CORONADO MALDONADO','email' => 'mariajudithcoronado1977@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '91','slug'=>'maria-judith-coronado-maldonado'])->assignRole('Editor');
        User::create(['name' => 'LEONOR SÁNCHEZ ARGUELLES','email' => 'leosarle77@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '44','slug'=>'leonor-sánchez-arguelles'])->assignRole('Editor');
        User::create(['name' => 'DIEGO IGNACIO HERRERA AGUILAR','email' => 'lef_diegoherrera@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '168','slug'=>'diego-ignacio-herrera-aguilar'])->assignRole('Editor');
        User::create(['name' => 'XOCHITL EDUVIGES AGUILAR LOPEZ','email' => 'agloxe@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '64','slug'=>'xochitl-eduviges-aguilar-lopez'])->assignRole('Editor');
        User::create(['name' => 'MARCO ANTONIO PÉREZ RODRÍGUEZ','email' => 'emilianozapata1971@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '132','slug'=>'marco-antonio-pérez-rodríguez'])->assignRole('Editor');
        User::create(['name' => 'PATRICIA MARIA GAMBOA BELLO','email' => 'patymgb77@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '107','slug'=>'patricia-maria-gamboa-bello'])->assignRole('Editor');
        User::create(['name' => 'ERNESTO NOÉ RODRÍGUEZ RAMÍREZ','email' => 'zerimarnoe3@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '51','slug'=>'ernesto-noé-rodríguez-ramírez'])->assignRole('Editor');
        User::create(['name' => 'DELMAR ORELLAN LANDA','email' => 'delmar17@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '109','slug'=>'delmar-orellan-landa'])->assignRole('Editor');
        User::create(['name' => 'LEON HERVERT AHUMADA','email' => 'primguadalupevictoria@outlook.com','password' => Hash::make('321321'), 'id_delegacion' => '52','slug'=>'leon-hervert-ahumada'])->assignRole('Editor');
        User::create(['name' => 'ARNULFO ALBERTO SÁNCHEZ MADERO','email' => 'aasanchez@msev.gob.mx','password' => Hash::make('321321'), 'id_delegacion' => '160','slug'=>'arnulfo-alberto-sánchez-madero'])->assignRole('Editor');
        User::create(['name' => 'ELSA ANDREA MALDONADO ALEMÁN','email' => 'cucsiandrea@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '118','slug'=>'elsa-andrea-maldonado-alemán'])->assignRole('Editor');
        User::create(['name' => 'ZENAIDA ALICIA SANTIAGO ALVARADO','email' => 'zenaida69@hotmail.es','password' => Hash::make('321321'), 'id_delegacion' => '7','slug'=>'zenaida-alicia-santiago-alvarado'])->assignRole('Editor');
        User::create(['name' => 'ESMERALDA FIERRO GALVAN','email' => 'yayis18figa@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '39','slug'=>'esmeralda-fierro-galvan'])->assignRole('Editor');
        User::create(['name' => 'DARIO RODRIGUEZ RESENDIZ','email' => 'tauro27_6@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '169','slug'=>'dario-rodriguez-resendiz'])->assignRole('Editor');
        User::create(['name' => 'MIRSA ELEM TERRAZAS SALGADO','email' => 'mirsaelem27@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '137','slug'=>'mirsa-elem-terrazas-salgado'])->assignRole('Editor');
        User::create(['name' => 'JOSE MANUEL TRINIDAD MOLINA','email' => 'pichomania.jmtm@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '6','slug'=>'jose-manuel-trinidad-molina'])->assignRole('Editor');
        User::create(['name' => 'CLAUDIA NOTARIO ROJAS','email' => 'notario29@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '97','slug'=>'claudia-notario-rojas'])->assignRole('Editor');
        User::create(['name' => 'ERIKA JIMÉNEZ ROMÁN','email' => 'jrpeque@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '56','slug'=>'erika-jiménez-román'])->assignRole('Editor');
        User::create(['name' => 'MARISOL MORALES SANCHEZ','email' => 'solecito.074@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '81','slug'=>'marisol-morales-sanchez'])->assignRole('Editor');
        User::create(['name' => 'GLORIA ALMORA SANTIAGO','email' => 'ceciliaalmora@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '61','slug'=>'gloria-almora-santiago'])->assignRole('Editor');
        User::create(['name' => 'SARA EUGENIA GARCÍA SÁNCHEZ','email' => 'saraeugeniagarcia@hotmail.com.mx','password' => Hash::make('321321'), 'id_delegacion' => '72','slug'=>'sara-eugenia-garcía-sánchez'])->assignRole('Editor');
        User::create(['name' => 'ALONSO CAMILO NOVOA GASTALDI','email' => 'alonsogastaldi@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '53','slug'=>'alonso-camilo-novoa-gastaldi'])->assignRole('Editor');
        User::create(['name' => 'MARISOL SANCHEZ HERNÁNDEZ','email' => 'kiwinota_sol@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '155','slug'=>'marisol-sanchez-hernández'])->assignRole('Editor');
        User::create(['name' => 'MARCO ANTONIO SÁNCHEZ CAMACHO','email' => 'adry_8@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '11','slug'=>'marco-antonio-sánchez-camacho'])->assignRole('Editor');
        User::create(['name' => 'ROSALINO GABINO LAGUNES SALAS','email' => 'lasrog@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '34','slug'=>'rosalino-gabino-lagunes-salas'])->assignRole('Editor');
        User::create(['name' => 'MIRIAM MENDEZ MORENO','email' => 'mayrim_capri294@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '176','slug'=>'miriam-mendez-moreno'])->assignRole('Editor');
        User::create(['name' => 'ALBERTO BAIZABAL HUERTA','email' => 'aimarbaiza@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '75','slug'=>'alberto-baizabal-huerta'])->assignRole('Editor');
        User::create(['name' => 'VIRGINIA MIRANDA GUZMÁN','email' => 'soymirandaguz@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '175','slug'=>'virginia-miranda-guzmán'])->assignRole('Editor');
        User::create(['name' => 'MÓNICA SUSANA HERRERA CORONA','email' => 'herreramonicasusana@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '20','slug'=>'mónica-susana-herrera-corona'])->assignRole('Editor');
        User::create(['name' => 'JONATAN EBER GARCÉS REYES','email' => 'jonagareyes@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '98','slug'=>'jonatan-eber-garcés-reyes'])->assignRole('Editor');
        User::create(['name' => 'JUAN ITURBIDE MEUNIER','email' => 'juaniturbide361@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '194','slug'=>'juan-iturbide-meunier'])->assignRole('Editor');
        User::create(['name' => 'SANDRA LUZ VEGA RAMÍREZ','email' => 'sandraluzvegaramirez1958@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '185','slug'=>'sandra-luz-vega-ramírez'])->assignRole('Editor');
        User::create(['name' => 'LUCIO LARA DEL ÁNGEL','email' => 'lara02006@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '204','slug'=>'lucio-lara-del-ángel'])->assignRole('Editor');
        User::create(['name' => 'GREGORIO SILVERIO HERNÁNDEZ REYES','email' => 'gregoriohernandezreyes54@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '184','slug'=>'gregorio-silverio-hernández-reyes'])->assignRole('Editor');
        User::create(['name' => 'JESÚS DAVID MORALES LÓPEZ','email' => 'iguasol@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '181','slug'=>'jesús-david-morales-lópez'])->assignRole('Editor');
        User::create(['name' => 'MANUELA FLORINDA SANTOS ZETINA','email' => 'maflorsagi@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '179','slug'=>'manuela-florinda-santos-zetina'])->assignRole('Editor');
        User::create(['name' => 'MARÍA EUGENIA LINARES SANTOS','email' => 'marilina64@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '202','slug'=>'maría-eugenia-linares-santos'])->assignRole('Editor');
        User::create(['name' => 'FELICIANO SILVA ALMENDRA','email' => 'silvaalfe@yahoo.com.mx','password' => Hash::make('321321'), 'id_delegacion' => '182','slug'=>'feliciano-silva-almendra'])->assignRole('Editor');
        User::create(['name' => 'ERASMO DELGADO GUERRA','email' => 'delgadoeg15@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '208','slug'=>'erasmo-delgado-guerra'])->assignRole('Editor');
        User::create(['name' => 'SUSANA MÉNDEZ GONZÁLEZ','email' => 'susan2_94@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '183','slug'=>'susana-méndez-gonzález'])->assignRole('Editor');
        User::create(['name' => 'AGUSTÍN FERNANDO LOZANO MALDONADO','email' => 'halconnegrogus@hotmail.es','password' => Hash::make('321321'), 'id_delegacion' => '193','slug'=>'agustín-fernando-lozano-maldonado'])->assignRole('Editor');
        User::create(['name' => 'RAFAELA CABRERA OCHOA','email' => 'cabrerarafaela66@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '192','slug'=>'rafaela-cabrera-ochoa'])->assignRole('Editor');
        User::create(['name' => 'JESÚS ALEJANDRO TLALPA REYES','email' => 'tlalpa241256@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '197','slug'=>'jesús-alejandro-tlalpa-reyes'])->assignRole('Editor');
        User::create(['name' => 'ESTHER SIXTA BOEHLER SUÁREZ','email' => 'maestra_boehler@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '178','slug'=>'esther-sixta-boehler-suárez'])->assignRole('Editor');
        User::create(['name' => 'CÉSAR ORTEGA RAMÍREZ','email' => 'ortegaramirez_cesar@yahoo.com.mx','password' => Hash::make('321321'), 'id_delegacion' => '189','slug'=>'césar-ortega-ramírez'])->assignRole('Editor');
        User::create(['name' => 'OSCAR MÉNDEZ HERNÁNDEZ','email' => 'oscmendher@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '218','slug'=>'oscar-méndez-hernández'])->assignRole('Editor');
        User::create(['name' => 'MARTIN JOSAFAT MORALES ALONSO','email' => 'josafatmorales68@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '233','slug'=>'martin-josafat-morales-alonso'])->assignRole('Editor');
        User::create(['name' => 'MELINA DEL ANGEL RAMOS','email' => 'mely_dar@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '222','slug'=>'melina-del-angel-ramos'])->assignRole('Editor');
        User::create(['name' => 'JUAN CARLOS GARCÍA ESTEVEZ','email' => 'carlosgaest@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '225','slug'=>'juan-carlos-garcía-estevez'])->assignRole('Editor');
        User::create(['name' => 'JOSÉ MIGUEL RUMAYOR ZACARIAS','email' => 'jmrz1804@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '238','slug'=>'josé-miguel-rumayor-zacarias'])->assignRole('Editor');
        User::create(['name' => 'ANA MARÍA DEL CARMEN BLANCO MENDOZA','email' => 'anablanco82961@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '244','slug'=>'ana-maría-del-carmen-blanco'])->assignRole('Editor');
        User::create(['name' => 'JOSÉ ANTONIO SUÁREZ GÁLVEZ','email' => 'suarezgalvezjoseantonio@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '230','slug'=>'josé-antonio-suárez-gálvez'])->assignRole('Editor');
        User::create(['name' => 'ENRIQUE RAFAEL CHESTY VIVEROS','email' => 'enrique_chesty@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '216','slug'=>'enrique-rafael-chesty-viveros'])->assignRole('Editor');
        User::create(['name' => 'ESTEPHANI JOSEPHA BARRADAS ROJAS','email' => 'rojaspormama@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '231','slug'=>'estephani-josepha-barradas-rojas'])->assignRole('Editor');
        User::create(['name' => 'ARMANDO RUIZ MORALES','email' => 'armando_ruiz21@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '226','slug'=>'armando-ruiz-morales'])->assignRole('Editor');
        User::create(['name' => 'ANA LINE MEZA PÉREZ','email' => 'linemeza@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '223','slug'=>'ana-line-meza-pérez'])->assignRole('Editor');
        User::create(['name' => 'DIEGO ARMANDO SÁNCHEZ FERNÁNDEZ','email' => 'geniussom84@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '245','slug'=>'diego-armando-sánchez-fernández'])->assignRole('Editor');
        User::create(['name' => 'EZEQUIEL ORTEGA GARCÍA','email' => 'garciacheque@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '241','slug'=>'ezequiel-ortega-garcía'])->assignRole('Editor');
        User::create(['name' => 'DANIEL CEQUERA HERVERT','email' => 'dazulc@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '220','slug'=>'daniel-cequera-hervert'])->assignRole('Editor');
        User::create(['name' => 'ROCÍO DEL MAR RAMÍREZ PADILLA','email' => 'mar.ramirezp84@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '240','slug'=>'rocío-del-mar-ramírez-padilla'])->assignRole('Editor');
        User::create(['name' => 'WENDY BLANCO MORALES','email' => 'wblanco@msev.gob.mx','password' => Hash::make('321321'), 'id_delegacion' => '242','slug'=>'wendy-blanco-morales'])->assignRole('Editor');
        User::create(['name' => 'GUILLERMINA PARRA LOZANO','email' => 'guilleplsnte@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '243','slug'=>'guillermina-parra-lozano'])->assignRole('Editor');
        User::create(['name' => 'CÉSAR VALENZUELA VÁZQUEZ','email' => 'goodloocky@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '234','slug'=>'césar-valenzuela-vázquez'])->assignRole('Editor');
        User::create(['name' => 'PORFIRIO ANTONIO MARTINEZ','email' => 'piyoyosabanero1@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '28','slug'=>'porfirio-antonio-martinez'])->assignRole('Editor');
        User::create(['name' => 'FRANCISCO CHI FABIAN','email' => 'fchifabian@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '2','slug'=>'francisco-chi-fabian'])->assignRole('Editor');
        User::create(['name' => 'FRANCISCO ARRIAGA SANCHEZ','email' => 'frank_escorpion965@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '119','slug'=>'francisco-arriaga-sanchez'])->assignRole('Editor');
        User::create(['name' => 'CAROLINA TENORIO DÍAZ','email' => 'catedi1120@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '31','slug'=>'carolina-tenorio-díaz'])->assignRole('Editor');
        User::create(['name' => 'JOSÉ ALBERTO CÁRDENAS RODRÍGUEZ','email' => 'cardenas566@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '17','slug'=>'josé-alberto-cárdenas-rodríguez'])->assignRole('Editor');
        User::create(['name' => 'JUAN MATEO MARTINEZ FLORES','email' => 'juanmateomartinezflores@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '26','slug'=>'juan-mateo-martinez-flores'])->assignRole('Editor');
        User::create(['name' => 'FELIPE GÓMEZ QUINTERO','email' => 'qfelipeg@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '95','slug'=>'felipe-gómez-quintero'])->assignRole('Editor');
        User::create(['name' => 'JAVIER HERNANDEZ HERNANDEZ','email' => 'segundogrado1819@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '4','slug'=>'javier-hernandez-hernandez'])->assignRole('Editor');
        User::create(['name' => 'CAROLINA SALINAS LÓPEZ','email' => 'carolina_salinas@rocketmail.com','password' => Hash::make('321321'), 'id_delegacion' => '1','slug'=>'carolina-salinas-lópez'])->assignRole('Editor');
        User::create(['name' => 'MARIANA MARANTO BECERRA','email' => 'marianamarano@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '83','slug'=>'mariana-maranto-becerra'])->assignRole('Editor');
        User::create(['name' => 'MARÍA DEL CARMEN SÁNCHEZ RAMOS','email' => 'krmenazul13@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '173','slug'=>'maría-del-carmen-sánchez-ramos'])->assignRole('Editor');
        User::create(['name' => 'MANUEL ROJAS PIMENTEL','email' => 'tigres_manuel7865@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '22','slug'=>'manuel-rojas-pimentel'])->assignRole('Editor');
        User::create(['name' => 'ILCE SARAI COUTIÑO ARELLANO','email' => 'ilsacoar66@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '86','slug'=>'ilce-sarai-coutiño-arellano'])->assignRole('Editor');
        User::create(['name' => 'BENY RAFAEL GALICIA OLIVARES','email' => 'rafael_1979@hotmail.es','password' => Hash::make('321321'), 'id_delegacion' => '69','slug'=>'beny-rafael-galicia-olivares'])->assignRole('Editor');
        User::create(['name' => 'FELIPE DE JESÚS SOSA LÓPEZ','email' => 'phillip1274@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '16','slug'=>'felipe-de-jesús-sosa-lópez'])->assignRole('Editor');
        User::create(['name' => 'ELSA MADAHI SANTES PAREDES','email' => 'elsama.santes@msev.gob.mx','password' => Hash::make('321321'), 'id_delegacion' => '141','slug'=>'elsa-madahi-santes-paredes'])->assignRole('Editor');
        User::create(['name' => 'JOSÉ LUIS HERNÁNDEZ HERNÁNDEZ','email' => 'jose_lef_16107@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '164','slug'=>'josé-luis-hernández-hernández'])->assignRole('Editor');
        User::create(['name' => 'SELENE RIQUE NOLASCO','email' => 'selenerique@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '138','slug'=>'selene-rique-nolasco'])->assignRole('Editor');
        User::create(['name' => 'XOCHITL PATRICIA RUCABADO HERRERA','email' => 'patricia140370@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '146','slug'=>'xochitl-patricia-rucabado-herrera'])->assignRole('Editor');
        User::create(['name' => 'ELIZABETH BLANCO CADENA','email' => 'eliblac20@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '117','slug'=>'elizabeth-blanco-cadena'])->assignRole('Editor');
        User::create(['name' => 'CRISTAL SAGAHÓN SÁNCHEZ','email' => 'cristalsagahon82@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '24','slug'=>'cristal-sagahón-sánchez'])->assignRole('Editor');
        User::create(['name' => 'ISMAEL RODRIGUEZ LOPEZ','email' => 'maysorverjeny@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '40','slug'=>'ismael-rodriguez-lopez'])->assignRole('Editor');
        User::create(['name' => 'ORLANDO HERNANDEZ DEL ANGEL','email' => 'snte56primariasespinal@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '21','slug'=>'orlando-hernandez-del-angel'])->assignRole('Editor');
        User::create(['name' => 'GEORGINA RAGA RIVERA','email' => 'gina_rr59@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '85','slug'=>'georgina-raga-rivera'])->assignRole('Editor');
        User::create(['name' => 'ALFREDO BLAS ORTIZ','email' => 'alfredo.blas@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '46','slug'=>'alfredo-blas-ortiz'])->assignRole('Editor');
        User::create(['name' => 'LYSSETTE YAZMÍN ESTHER HUERTA TRUJILLO','email' => 'lyssyeht@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '67','slug'=>'lyssette-yazmín-esther-huerta-trujillo'])->assignRole('Editor');
        User::create(['name' => 'JUANA ELIZABETH GOMEZ AEDO','email' => 'elygomez42@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '12','slug'=>'juana-elizabeth-gomez-aedo'])->assignRole('Editor');
        User::create(['name' => 'JORGE REYES SÁNCHEZ','email' => 'reyes_j@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '135','slug'=>'jorge-reyes-sánchez'])->assignRole('Editor');
        User::create(['name' => 'SANDRA MIRETH SALDAÑA ROMÁN','email' => 'sandra_0310s@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '113','slug'=>'sandra-mireth-saldaña-román'])->assignRole('Editor');
        User::create(['name' => 'VICENTE TADEO BAUTISTA','email' => 'tadeo58.js@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '49','slug'=>'vicente-tadeo-bautista'])->assignRole('Editor');
        User::create(['name' => 'ERIKA RIOS SANTIAGO','email' => 'acueri12@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '59','slug'=>'erika-rios-santiago'])->assignRole('Editor');
        User::create(['name' => 'CARLOS ALBERTO COBOS PEREDA','email' => 'cacobos@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '139','slug'=>'carlos-alberto-cobos-pereda'])->assignRole('Editor');
        User::create(['name' => 'CLAUDIA LUCIA ARIAS RIVERA','email' => 'claunef_22@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '174','slug'=>'claudia-lucia-arias-rivera'])->assignRole('Editor');
        User::create(['name' => 'YAJAIRA VILLALOBOS LÓPEZ','email' => 'yaki_lv17382@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '32','slug'=>'yajaira-villalobos-lópez'])->assignRole('Editor');
        User::create(['name' => 'ISIDORO ORTEGA SÁNCHEZ','email' => 'lolo_ortega80@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '18','slug'=>'isidoro-ortega-sánchez'])->assignRole('Editor');
        User::create(['name' => 'LAURA SUSANO LINO','email' => 'oinrocirpac@live.com.mx','password' => Hash::make('321321'), 'id_delegacion' => '150','slug'=>'laura-susano-lino'])->assignRole('Editor');
        User::create(['name' => 'MELISSA ALDANA PAZ','email' => 'mely.sgam@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '76','slug'=>'melissa-aldana-paz'])->assignRole('Editor');
        User::create(['name' => 'LADY ARIADNA PÉREZ AZUARA','email' => 'laryteacher@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '42','slug'=>'lady-ariadna-pérez-azuara'])->assignRole('Editor');
        User::create(['name' => 'RAÚL CAAMAÑO PUEBLA','email' => 'puebla-r@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '15','slug'=>'raúl-caamaño-puebla'])->assignRole('Editor');
        User::create(['name' => 'ARVED ZÁRATE MORALES','email' => 'zamoa_80@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '154','slug'=>'arved-zárate-morales'])->assignRole('Editor');
        User::create(['name' => 'JOSÉ BORREGO LOYA','email' => 'jose_borrego1960@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '188','slug'=>'josé-borrego-loya'])->assignRole('Editor');
        User::create(['name' => 'VICENTE GUTIÉRREZ GONZÁLEZ','email' => 'vicenteupv@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '201','slug'=>'vicente-gutiérrez-gonzález'])->assignRole('Editor');
        User::create(['name' => 'MARÍA MIRSA LÓPEZ RAMÍREZ','email' => 'a.sri.m@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '195','slug'=>'maría-mirsa-lópez-ramírez'])->assignRole('Editor');
        User::create(['name' => 'ADELA IZAZAGA MENDIOLA','email' => 'adeiza0211@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '186','slug'=>'adela-izazaga-mendiola'])->assignRole('Editor');
        User::create(['name' => 'MIGUEL ANGEL BETANCOURT MARTINEZ','email' => 'miguelbetancourt781@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '207','slug'=>'miguel-angel-betancourt-martinez'])->assignRole('Editor');
        User::create(['name' => 'ROSARIO MORA CONTRERAS','email' => 'higiniolunamora@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '191','slug'=>'rosario-mora-contreras'])->assignRole('Editor');
        User::create(['name' => 'FRANCISCO JAVIÉR GUTIÉRREZ HERNÁNDEZ','email' => 'fjgutierrez753@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '214','slug'=>'francisco-javiér-gutiérrez-hernández'])->assignRole('Editor');
        User::create(['name' => 'ZULMA HIPOLITO PATRICIO RUSSELL','email' => 'zulaka3@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '239','slug'=>'zulma-hipolito-patricio-russell'])->assignRole('Editor');
        User::create(['name' => 'FELIPE TORRALVA GARCIA','email' => 'torralva19@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '235','slug'=>'felipe-torralva-garcia'])->assignRole('Editor');
        User::create(['name' => 'MIGUEL DARIO CUBILLOS GUILLÉN','email' => 'mdariocg@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '236','slug'=>'miguel-dario-cubillos-guillén'])->assignRole('Editor');
        User::create(['name' => 'IMELDA CRUZ SANROMAN','email' => 'ime1966@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '221','slug'=>'imelda-cruz-sanroman'])->assignRole('Editor');
        User::create(['name' => 'EUFRACIA ROMERO LUGO','email' => 'eufraciaromero_lugo60@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '212','slug'=>'eufracia-romero-lugo'])->assignRole('Editor');
        User::create(['name' => 'JAQUELINE JIMÉNEZ PADILLA','email' => 'jackirudi72_77@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '62','slug'=>'jaqueline-jiménez-padilla'])->assignRole('Editor');
        User::create(['name' => 'MARCO ANTONIO MOLINA GARCÍA','email' => 'osohandballcarrillo@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '166','slug'=>'marco-antonio-molina-garcía'])->assignRole('Editor');
        User::create(['name' => 'AIDA VELASQUEZ AMECA','email' => 'aida_doka@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '96','slug'=>'aida-velasquez-ameca'])->assignRole('Editor');
        User::create(['name' => 'JORGE ARMANDO RIVERA MEZA','email' => 'jarm_1979@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '161','slug'=>'jorge-armando-rivera-meza'])->assignRole('Editor');
        User::create(['name' => 'VERA NAHIELY MARÍN AGUIRRE','email' => 'maguivn@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '149','slug'=>'vera-nahiely-marín-aguirre'])->assignRole('Editor');
        User::create(['name' => 'LUIS ANTONIO BECERRA MENDOZA','email' => 'labm108@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '47','slug'=>'luis-antonio-becerra-mendoza'])->assignRole('Editor');
        User::create(['name' => 'MANUEL LAGUNES PÉREZ','email' => 'lagunes_111105@live.com.mx','password' => Hash::make('321321'), 'id_delegacion' => '121','slug'=>'manuel-lagunes-pérez'])->assignRole('Editor');
        User::create(['name' => 'AZARET YURAID SOSA SELVAS','email' => 'sosa-aza@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '159','slug'=>'azaret-yuraid-sosa-selvas'])->assignRole('Editor');
        User::create(['name' => 'ISA SIGREY CRUZ LOPEZ','email' => 'isa_sigrey@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '162','slug'=>'isa-sigrey-cruz-lopez'])->assignRole('Editor');
        User::create(['name' => 'OSVALDO REYES ARANO','email' => 'osvaldo_rea@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '124','slug'=>'osvaldo-reyes-arano'])->assignRole('Editor');
        User::create(['name' => 'ROSALBA DEL CARMEN ROSAS CHÁVEZ','email' => 'rosalba_johan@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '70','slug'=>'rosalba-del-carmen-rosas-chávez'])->assignRole('Editor');
        User::create(['name' => 'LUIS MANUEL SOLER NIETO','email' => 'luigi_8@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '172','slug'=>'luis-manuel-soler-nieto'])->assignRole('Editor');
        User::create(['name' => 'MARTIN PEREZ NAVARRO','email' => 'perez_m2_6@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '210','slug'=>'martin-perez-navarro'])->assignRole('Editor');
        User::create(['name' => 'ANGEL DEL RIBERO MARTÍNEZ','email' => 'angeldelr@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '229','slug'=>'angel-del-ribero-martínez'])->assignRole('Editor');
        User::create(['name' => 'JOYNNERY ISABEL VERGARA LUNA','email' => 'email1@example.com','password' => Hash::make('321321'), 'id_delegacion' => '99','slug'=>'joynnery-isabel-vergara-luna'])->assignRole('Editor');
        User::create(['name' => 'ELIZABETH TORRES ULLOA','email' => 'email2@example.com','password' => Hash::make('321321'), 'id_delegacion' => '224','slug'=>'elizabeth-torres-ulloa'])->assignRole('Editor');
        User::create(['name' => 'BARBARA CONCEPCION PIÑA CASTRO','email' => 'bcpinacastro@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '211','slug'=>'barbara-concepcion-piña-castro'])->assignRole('Editor');
        User::create(['name' => 'LILLIAN SUSET CHÁVEZ CERECEDO','email' => 'lisuchace@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '112','slug'=>'lillian-suset-chávez-cerecedo'])->assignRole('Editor');
        User::create(['name' => 'IRENE CASTRO FERTO','email' => 'irecafer@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '203','slug'=>'irene-castro-ferto'])->assignRole('Editor');
        User::create(['name' => 'EULALIA ÁLVAREZ ROJAS','email' => 'lalitaalbarez2009@hotmail.com','password' => Hash::make('321321'), 'id_delegacion' => '199','slug'=>'eulalia-álvarez-rojas'])->assignRole('Editor');
                


            

    
    
    
    
    
    
    
    }
}
