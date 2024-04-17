<h1>OrdonezAIPracticas</h1>

<h2>Este proyecto contiene ejercicios prácticos utilizando <strong>Servlets</strong> y <strong>JSP</strong> para el desarrollo de aplicaciones web.</h2>

<h3>Contenido del Proyecto</h3>

<h4>1. Menú Principal (index.html)</h4>
<p>La página principal del proyecto contiene un menú, que contiene Bootstrap, donde se organizan los ejercicios de dos tipos: <strong>Servlets y JSP</strong>.</p>


<h5>Enlaces de Servlets:</h5>

<p>En este apartado del menú principal solo pondré los ejercicios que hagan uso de <strong>Servlets</strong>.</p>

<p>Petición GET: Accede al controlador <strong>(PrimerController)</strong> y muestra las cabeceras de la petición HTTP GET.</p>
<p>Petición POST: Accede al controlador <strong>(PrimerController)</strong> y muestra las cabeceras de la petición HTTP POST.</p>

<h5>Enlaces de JSP:</h5>
<p>Ejercicio Calculadora: Accede a la página <strong>calculadora.jsp</strong>, donde puedes realizar operaciones matemáticas simples.</p>
<p>Formularios Simples: Accede a una página en la que <strong>aparecen dos formularios simples</strong>, uno que hace uso de un Map y otro que hace lo mismo, pero <strong>no usa un Map</strong>.</p>
<p>Formulario Complejo: Accede a la página de un <strong>formulario complejo</strong>, donde se pueden rellenar varios campos. Incluye un botón para <strong>borrar todos los campos con cambios realizados</strong>.</p>
<h4>2. Controlador Servlet (PrimerController.java)</h4>
<p>El servlet PrimerController maneja las peticiones <strong>GET y POST</strong>.</p>
<p>Cuando se accede a través de un navegador, muestra las cabeceras de la petición HTTP correspondiente.</p>

<h4>3. Página JSP de la Calculadora (calculadora.jsp)</h4>
<p>La página calculadora.jsp implementa una sencilla calculadora donde puedes seleccionar el tipo de operación <strong>(suma, resta, multiplicación o división)</strong> y proporcionar dos operandos.</p>
<p>La página muestra el resultado de la operación seleccionada con los operandos elegidos por el usuario.</p>

<h4>4. Página JSP de los formularios simples (formulario.jsp y formularioMap.jsp)</h4>
<p>Aunque los dos formularios contengan los mismos campos y los mismos tipos de <strong>inputs</strong>, hay una diferencia entre ellos, la cual no es visible para el usuario.</p>
<p>Cuando nos metemos en la página, que es <strong>fsimple.html</strong>, aparecerán dos formularios iguales, pero encima de cada uno pone si es un formulario que tiene map, o no.</p>
<p>Una vez hemos completado y enviado uno de los formularios, nos enviará a uno de los JSP, dependiendo obviamente de cual hayamos enviado y mostrará todos los campos del formulario.</p>

<h4>5. Página JSP del formulario complejo (formularioComplejo.jsp)</h4>
<p>Este formulario, está mucho más desarrollado que cualquiera de los anteriores, ya que <strong>incluye muchos más campos</strong> para rellenar, o elegir.</p>
<p>Cuando accedemos a la página, entramos en <strong>fcomplejo.html</strong> y nos aparecerá un formulario el cual ocupará casi toda la página</p>
<p>Este formulario, tiene un botón extra el cual sirve para <strong>borrar todos los campos</strong> que hayamos rellenado, o cambiado.</p>
<p>Además, una vez hemos enviado el formulario, accederemos a <strong>formularioComplejo.jsp</strong> y nos mostrará todos los campos de este formulario, incluido un campo oculto.</p>
