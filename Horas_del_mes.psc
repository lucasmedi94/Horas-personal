Algoritmo Horas_del_mes
	definir empleado, mes Como Caracter
	Definir horas_mes, horas_comunes, horas_certificado, horas_notrabajadas, horas_extras, total_horas, horas_Trabajadas Como Real
	Definir seguir_Agregando Como Caracter
	
	//Tomar datos del mes para hacer los calculos necesarios
	
	Escribir "Mes de Trabajo"
	Leer mes
	Escribir "Introducir nombre del empleado"
	Leer empleado
	Escribir "Introducir horas comunes del mes"
	Leer horas_comunes
	Escribir "Horas disponibles para trabajar en el mes"
	Leer horas_mes
	Escribir "Indicar horas con certificado o justificadas del empleado " empleado ":"
	Leer horas_certificado
	
	// Una vez realizado los datos estandares del empleado y de los meses 
	//Realizamos la lecturas de la Ficha de trabajo con las horas que el empleado trabajo
	
	total_horas <- 0
	seguir_Agregando <- "S"
	
	
	Mientras seguir_Agregando = "S" O seguir_Agregando = "s" Hacer
        Escribir "Ingrese las horas trabajadas del empleado: "
        Leer horas_Trabajadas
        total_Horas <- total_Horas + horas_Trabajadas
		
        Escribir "¿Desea agregar más horas trabajadas? (S/N): "
        Leer seguir_Agregando
		
        Si seguir_Agregando <> "S" Y seguir_Agregando <> "s" Entonces
            Escribir "Finalizando suma"
        Fin Si
    Fin Mientras
	
	
	//Una vez realizada la suma de las horas que figuran en la ficha se realiza el calculo para dar un resultado.
	
	si horas_comunes > total_Horas Entonces
		horas_comunes <- total_Horas
		
	SiNo
		horas_extras<- total_Horas - horas_comunes
		horas_comunes <- horas_comunes - horas_certificado
	FinSi
	
	
	
	horas_notrabajadas <- horas_mes - total_Horas
	
	
	//Estas operaciones las realiza directamente el sistema para poder darte el calculo final"
	
	
	
	
	Escribir "El empleado " empleado " en el mes de " mes
	escribir "Trabajo " total_Horas "Horas"
	Escribir "Las horas comunes son:" horas_comunes
	Escribir "Las Horas Justificadas son: " horas_certificado
	Escribir "Las Horas Extras son: " horas_extras
	Escribir "Las Horas no trabajadas son: " horas_notrabajadas
	
	// Se imprime el calculo final para poder ya anotarlo o transmitirlo para su uso 
	
FinAlgoritmo
