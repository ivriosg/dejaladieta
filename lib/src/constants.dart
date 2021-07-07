class Faq {
  Faq(
      {required this.expandedValue,
      required this.headerValue,
      this.isExpanded = false,
      this.canTapOnHeader = true});

  String expandedValue;
  String headerValue;
  bool isExpanded;
  bool canTapOnHeader;
}

List<Faq> generateItems(int numberOfItems) {
  return List.generate(numberOfItems, (int index) {
    return Faq(
      headerValue: 'Título',
      expandedValue: 'Descripción',
    );
  });
}

const List<dynamic> Faqs = [
  [
    "¿Para quienes están diseñados los retos?",
    "Para aquellas personas que buscan perder peso y grasa corporal."
  ],
  [
    "¿Puedo hacer el reto si soy de otro país?",
    "Sí, el reto es 100% en línea por lo tanto puedes participar desde cualquier lugar. El método de pago para ti es PayPal"
  ],
  [
    "¿Quiénes no pueden hacer el reto?",
    "Embarazadas, veganos/vegetarianos, menores de 17 años, personas con enfermedades sin previa consulta "
  ],
  [
    "¿Los menús son iguales?",
    "Si, los menús son iguales para todos. Lo que cambian son las cantidades."
  ],
  [
    "¿Qué pasa si no encuentro o no me gusta algún alimento?",
    "Con ayuda de la lista de alimentos equivalentes que te envío podrás sustituir los alimentos que quieras."
  ],
  [
    "¿Los ingredientes son costosos?",
    "Para nada, los menús se adaptan a cualquier presupuesto. No incluyo superfoods ni alimentos difíciles de encontrar."
  ],
  [
    "¿Las recetas son muy difíciles de preparar?",
    "No, por lo general las recetas son muy sencillas y para las que son mas elaboradas te mando el paso a paso en un recetario."
  ],
  [
    "¿Qué hago después de pagar?",
    "Esperar un correo de confirmación, llenar tu historia clínica y esperar a recibir tu material en la fecha estipulada."
  ],
  [
    "¿Qué hago si aún no me aceptan en el reto?",
    "Verificar que hayas escrito correctamente la contraseña. Esperar a la fecha estipulada en tu correo de confirmación, si te inscribes después de esa fecha deberás esperar aproximadamente de 2-6 horas para ser aceptado"
  ],
  [
    "¿Qué hago si no recibí ninguna confirmación o historia clínica?",
    "Lo mas probable es que tu correo esté en SPAM, antes de preocuparte busca ahí. Si necesitas ayuda escribe a retos@dejaladieta.com contando tu situación"
  ],
  [
    "¿Qué pasa si no envié mi historia clínica a tiempo?",
    "Solo tendrás oportunidad de enviar tus datos para el reto del siguiente mes. De lo contrario se enviará tu reto que pagaste, ya no el reto que esté en curso."
  ],
  [
    "¿Qué hago si no se cargan mis fotos en mi historial clínico?",
    "Deberás ajustar el tamaño de tus fotos en https://tinypng.com/  posiblemente estén muy pesadas. O enviarlas a retos@dejaladieta.com"
  ],
];
