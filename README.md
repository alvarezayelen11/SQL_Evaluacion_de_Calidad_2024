# Análisis de calidad de datos

Existen muchas maneras distintas de definir qué es “**calidad de datos**”. Cualquiera sea la definición particular que se adopte, todas ellas coinciden en que contar con datos de buena calidad constituye un pilar esencial para que una persona u organización sea capaz de tomar decisiones informadas y basadas en la evidencia.

De manera general, puede decirse que la calidad de los datos refiere al grado en que un conjunto de datos cumple con ciertos estándares específicos para ser útiles y relevantes en un contexto determinado. Es decir que la calidad de datos evalúa la adecuación de los datos para su uso en cierto entorno.

### Ok, ¿y cuáles son estos estándares, criterios o dimensiones? 

Acá es donde hay polifonía en función de la fuente que se consulte. Veamos algunos ejemplos.

La [**Guía de Calidad de Datos**](https://medium.com/datosba/lineamientos-para-gobernar-los-datos-47793ec4137c) publicada por la **Subsecretaría de Políticas Públicas Basadas en Evidencia** del Gobierno de la Ciudad de Buenos Aires en 2022 (disponible online siguiendo el enlace y también se encuentra descargada en la carpeta “**Bibliografía**” en este mismo repositorio), se basó en el modelo **DAMA-DMBOK** (DAMA son las siglas de **Data Management**, una asociación internacional sin fines de lucro cuyo propósito es guiar a los profesionales de datos a través de un conjunto de estándares, mejores prácticas y procedimientos), para establecer los siguientes criterios: 

-	**Criterios mínimos**:
    - *Exactitud*
    - *Completitud*
-	**Criterios básicos**: 
    - *Consistencia*
    - *Credibilidad*
    - *Actualidad*
-	**Criterios óptimos**: 
    - *Pertinencia*
    - *Valor*

Por otro lado, la **Dirección General de Gobernanza de Datos** dependiente de la **Secretaría de Innovación y Transformación Digital** del Gobierno de la Ciudad de Buenos Aires publicó en 2024 a través de la **Resolución 204-SECITD/24** los [**Lineamientos para la Gobernanza de Datos**](https://buenosaires.gob.ar/innovacionytransformaciondigital/lineamientos-para-la-gobernanza-de-datos), el cual contiene todo un apartado dedicado a la calidad de los datos. 

Tales lineamientos están disponibles online siguiendo el enlace y también se encuentran descargados en la carpeta “**Bibliografía**” en este mismo repositorio. En él se definen las siguientes dimensiones de calidad de datos: 

-	**Relevancia**
-	**Completitud**
-	**Exactitud**
-	**Unicidad**
-	**Validez**
-	**Homogeneidad**
-	**Correctitud**
-	**Coherencia**
-	**Conformidad**

De este último trabajo tuve el inmenso honor y placer de participar desde la **Gerencia Operativa de Análisis y Modelado de Datos**, que forma parte de la mencionada **Dirección General de Gobernanza de Datos** 😊

Estos lineamientos, a su vez, toman como base para su redacción (y adaptan) al documento **ISO/IEC 25012**, elaborado por la **Organización Internacional de Normalización (ISO)** y la **Comisión Electrotécnica Internacional (IEC)**. Las pautas que establece la ISO y la IEC se pueden dividir en dos grandes grupos: *calidad de datos inherente* y *calidad de datos dependiente del sistema*. Las características que valora este documento son:
 
-	*Exactitud*
-	*Completitud*
-	*Consistencia*
-	*Credibilidad* 
-	*Actualidad*
-	*Accesibilidad*
-	*Conformidad*
-	*Confidencialidad*
-	*Eficiencia* 
-	*Precisión*
-	*Trazabilidad*
-	*Comprensibilidad*
-	*Disponibilidad*
-	*Portabilidad*
-	*Recuperabilidad*

Y, sin necesidad de hurgar demasiado, se pueden encontrar otras organizaciones, fuentes y autores que hablan de otros criterios de calidad, tales como: integridad, puntualidad, auditabilidad, oportunidad…

### Entonces, ¿qué dimensiones de datos se deben usar para evaluar la calidad de los datos de mi organización? 

Como se dijo al principio, la respuesta depende muchísimo del contexto. Sobre algunas dimensiones, por ejemplo, *completitud* y *exactitud*, suele haber coincidencia en las distintas fuentes en que constituyen requisitos “de mínima” para hablar de datos de buena calidad. Pero aun cuando existen coincidencias de base, es posible que aparezcan discrepancias cuando nos adentramos en la implementación de tales dimensiones. 

Por ejemplo, supongamos que el número de teléfono celular puede constituir un atributo obligatorio para una base de datos, pero quizás no lo es para otra (constituye un campo opcional), por lo cual, el umbral aceptado de completitud para el primer caso será muy alto, mientras que en el segundo caso seguramente deba ser más permisivo o incluso puede tratarse de un atributo que no sea evaluable en base a la completitud.

El tema da para hablar (o escribir) mucho. En este repositorio simplemente se presentan dos tablas con datos ficticios y las consultas a ejecutar en MySQL para tener un panorama preliminar de la calidad de datos en torno a ciertas dimensiones. 

Desde ya que no constituye un análisis exhaustivo, sino que se presenta a modo de ejemplo, deseando que pueda servir de puntapié para generar interés a otras personas en torno a la evaluación de la calidad de los datos. 

## Authors

- [@alvarezayelen11](https://github.com/alvarezayelen11)


## Feedback

If you have any comments, please write to me
