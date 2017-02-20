login <- list(
          fluidRow(
          column(width = 7,
            box(width = NULL,
                tags$head(
                    tags$style(HTML(".shiny-output-error-validation {
                                    color: red;}"
                                    ))
                    ),
                  HTML(
                    '
                <head>
                <style>
                #example1 {
                    border: 1px solid black;
                    padding: 15px;
                    background: url(fondo_pasture_tr.png);
                    background-size: 600px 350px;
                    background-repeat: repeat;
                }
                </style>
                </head>
                <body>
                <div id="example1">
                     <p style="text-align:justify"> 
                     <font size="6"> 
                     <strong> Bienvenidos a GeoPrads</strong></p>
                     </font>
                    <p>Esta aplicaci\U00F3n permite visualizar y interactuar con el proyecto de Monitoreo 
                     de Praderas mediante sensores remotos, formando parte de la unica plataforma Chilena 
                     capaz de entregar datos en tiempo real del contenido de agua y productividad de las praderas.</p> 
                    <p> La utilizaci\U00F3n de estos m\U00E9todos, permiten un monitoreo constante 
                     del estado productivo de la pradera, permitiendo generar una toma de decisi\U00F3n 
                     eficiente y acorde al monitoreo, tanto a escala predial (1 ha) como regional.</p>
                </div>
                </body>
                    '),
              hr(),
              h3(paste0("Ingrese Usuario y Contrase","\U00F1","a")),
                
              fluidRow(
                column(6,textInput("caption", "Usuario", "",width=230)),
                column(6,passwordInput("password", paste0("Contrase", "\U00F1","a:"),width=230))
                ),
              fluidRow(
                column(6,
                       actionButton("go", "Ingresar"),
                       actionButton("contact", "Contacto")),
                column(6,
                       actionButton("btn_newuser", HTML('&#191Nuevo usuario&#63'), class="btn-block"))
                ),
              bsModal("newuser", "Ingrese datos", "btn_newuser", size = "large",
                      fluidRow(column(12,h1("Datos de Contacto")),
                               column(3,textInput("nombre", "Nombre y Apellido", "")),
                               column(3,textInput("mail", "Correo", "")),
                               column(3,textInput("fono", paste0("N",HTML('\U00FA'),"mero de tel",HTML('\U00E9'),"fono")))),
                      fluidRow(column(3,textInput("int", paste0("Instituci",HTML('\U00F3'),"n"))),
                               column(3,selectInput("tipo_int", label=paste0("Tipo de Instituci",HTML('\U00F3'),"n"),
                                                    choices=c("","Publica","Privada"),selected = ""))),
                      hr(),
                      fluidRow(
                        column(12,h1("Datos de Usuario")),
                        column(3,textInput("usuario", "Nombre de Usuario", "")),
                        column(3,passwordInput("pass", paste0("Contrase", "\U00F1","a")))
                      ),
                      fluidRow(column(3,actionButton("btn_newuser2","Agregar Nuevo Usuario")))
              ),
              hr(),
              fluidRow(
              column(12, verbatimTextOutput("valuess")),
              column(6,
                     useShinyjs(),
                     actionButton("goPortal", "Ir al GeoPortal")
              #conditionalPanel(condition="output.tipoUser==true",
              # actionButton("goPortal", "Ir al GeoPortal")
              # )
                                        
              ))
          )),
       column(width = 5,
        box(width = NULL,collapsible = TRUE,
            HTML('<font size="4"> <strong> Instituciones Patrocinantes </strong> </font>'),
            fluidRow(HTML('
                 <div> <a href="http://www.fia.cl/"> <img src="./img/logo_fia.png" style="float: left; width: 23%; margin-left: 15%; margin-right: 1%; margin-bottom: 0.5em;" /> </a> </div>
                 <div> <a href="http://www.goreloslagos.cl/"> <img src="./img/logo-gore.jpg" style="float: left; width: 30%; margin-left: 15%;margin-right: 1%; margin-bottom: 0.5em;" /> </a> </div>
                 <p style="clear: both;">
                  ')),
            fluidRow(HTML('
                 <div> <a href=http://www.uchile.cl/> <img src="./img/logo-Uchile.png" style="float: left; width: 35%; margin-left: 10%; margin-right: 1%; margin-bottom: 0.5em;" /> </a> </div>
                 <div> <a href="http://biosfera.uchile.cl"> <img src="./img/logobackGR.png" style="float: left; width: 50%; margin-left: 1%; margin-top: 5%; margin-right: 2%; margin-bottom: 0.5em;" /> </a> </div>
                  <p style="clear: both;">
                  ')),
                   hr(),
                   HTML('<font size="4"> <strong> Instituciones Asociadas </strong></p> </font>
         <div style="clear: left;"> <a href="http://www.prolesur.cl/"> <img src="./img/logo-prolesur.jpg" width="35%" height="30%" alt="" style="float: left; margin-left: 15%;margin-right:5px" /> </a> </div> 
                                                 ')
          ),
        box(width = NULL,collapsible = TRUE,HTML('
           <font size="5"> <strong> Contacto</strong></p> </font>
           <font size="4"> <a href="http://biosfera.uchile.cl/", target="_blank">GEOPRADS</a> <br/> </font>
                                                 '))
        )
      ))
