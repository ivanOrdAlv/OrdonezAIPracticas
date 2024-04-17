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
<p>Contador Cookie: Accede a la página<strong>contadorCookie.jsp</strong>, que contará cuantas veces se ha metido un usuario en esa página.</p>
<p>Menu Cookie: Accede a la página<strong>menuCookie.jsp</strong>, que nos mostrará un menú para hacer nuestra propia cookie. Está conectada con <strong>controlCookie.jsp</strong>, que se encarga de todo el funcionamiento.</p>
<p>Menu Sesion: Hace lo mismo que <strong>menuCookie.jsp</strong>, pero hace uso de sesiones en vez de Cookies. Es por eso que he tenido que crear otro JSP llamado: <strong>controlCookieSesion.jsp</strong></p>
<p>Contador Sesion: Hace lo mismo que<strong>contadorCookie.jsp</strong>, pero usando sesiones en vez de Cookies.</p>
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

<h4>6. Página de contador de Cookies(contadorCookie.jsp)</h4>
<p>Esta página se encarga de que una vez entre alguien a la página, que vaya contando las veces que esa persona ha accedido, para hacerlo, he hecho uso de una Cookie.</p>
<p>La página tiene un <strong>contador</strong>, el cual se incrementa, si salimos y volvemos a entrar en la página, o bien cuando refrescamos la página.</p>
<p>Para que podamos refrescar la página cómodamente, he incluido un botón de <strong>Refrescar</strong> el cual refresca la página y el contador se incrementa.</p>
<p>También he añadido un botón de <strong>Eliminar</strong>, para que elimine la cookie y el contador se ponga a "1".</p>

<h4>7. Menú con Cookies(menuCookie.jsp y controlCookie.jsp)</h4>
<p>Este página contiene un pequeño menú, el cual sirve para crear una cookie, y posteriormente, visualizarla, modificarla, eliminarla y volver al menú inical si el usuario lo desea.</p>
<p>La opción de crear, crea la cookie con su nombre y valor correspondiente. Esta acción la lleva a cabo el fichero<strong>controlCookie.jsp</strong>, el cual se encargará de hacer lo mismo con todas las otras acciones. Se podría decir que actúa como un Servlet, pero es un JSP.</p>
<p>Las opciones de <strong>Visualizar, Modificar y Eliminar</strong> no se podrán ejecutar correctamente si la cookie no ha sido creada anteriormente.</p>
<p>Para poder visualizar, o eliminar, la cookie, bastará con poner el<strong>nombre</strong> en el "input" correspondiente...y darle a la opción que deseamos.</p>
<p>Si queremos modificar la cookie, tendremos que poner el nombre de la cookie <strong>y el valor que le vamos a añadir</strong>.</p>

<h4>8. Menú con Sesiones(menuCookieSesion.jsp y controlCookieSesion.jsp)</h4>
<p>Estos dos ficheros hacen exactamente lo mismo que los ficheros <strong></strong>, pero en vez de usar cookies, he usado sesiones.</p>
<p>Lo que he hecho ha sido directamente sustituir las cookies del fichero de control, por una sesión y sus respectivos métodos y atributos.</p>

<h4>9. Página de contador de Sesiones(contadorCookieSesion.jsp)</h4>
<p>Esta página hace exactamente lo mismo que el fichero <strong>contadorCookie.jsp</strong>, pero sustituyendo las cookies por sesiones.</p>
<p>He reemplazado la cookie que había creado por una sesión.</p>
