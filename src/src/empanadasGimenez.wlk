object gimenez {
	var fondoSueldos=3000000
	method pagarSueldo(empleado){
		fondoSueldos= fondoSueldos- empleado.sueldo()
		empleado.cobrarSueldo()
	}
	
}

object galvan{
	var sueldo=150000
	var dineroDisponible=0
	var deuda=0
	method nuevoSueldo(sueldoActual){
		sueldo=sueldoActual
	}
	method sueldo(){
		return sueldo
	}
	
	method cobrarSueldo(){
		dineroDisponible= self.sueldo()
		self.gastar(self.totalDeuda())
		deuda=0
	}
	
	method gastar(cuanto){
		dineroDisponible = dineroDisponible-cuanto
	}
	
	method totalDeuda(){
		/*if(dineroDisponible<0){
			deuda=dineroDisponible
			return deuda
		}
		else  return deuda*/
		
		 deuda= dineroDisponible.min(deuda) 
		 return deuda-(deuda*2)
	}
	
	method totalDinero(){
		return 0.max(dineroDisponible)
	}
}

object baigorria{
	var empanadasVendidas=0
	
	
	method ventaEmpanadas(cantidad){
		
		 empanadasVendidas= cantidad
	}
	
	method sueldo(){
		return empanadasVendidas*150
	}
}