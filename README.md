# TP Integrador IOS
**[Esteban Coria]**
**[esteban.coria@despegar.com]**

![despegar.com](http://staticontent.com/images/despegar/common/header/despegar.gif?r=1)

### Resumen de la applicación
Basado con el ejemplo de GettingStarted de https://developer.apple.com/, la aplicación cuenta con una TableView encargada de mostrar el listado de hoteles cuando comienza la aplicación, esto lo hace utilizando una clase que a su vez mediante **[Alamofire]** realiza los request y se mapeó el json con **[Gloss]**
<_Se utilizó el patrón de listener para el request asincrono (el mismo usado en el TP de Android)_>

Se utilizó lo aprendido en el GettingStarted para avanzar hacia un hotel al tapear sobre este en la TableView (nada nuevo aun). Se utilizó **[Kingfisher]** para obtener la imagen mediante una URL.

En el HotelDetail se muestra la imagen del hotel, la descripción (falta el nombre del hotel en la navBar y los amenities como imagenes). 

Debajo de la imagen se encuentran dos botones, uno que tiene el numero de reviews y que al tapear se navega hacia otra vista con el listado de reviews. Y por otro lado un botón que por ahora dice Address (que debería tener el string de la dirección) navega hacia otra vista que contiene un MapView que posiciona el mapa en la geolocalizacion del hotel, sumandole un MapMark (pin) para indicar la ubicación.

### To do:
   * (HotelDetail) Falta Estilo en NavBar
   * (HotelDetail) Falta la funcionalidad de ammenities 
   * (HotelDetail) Agrandar la imagen al tapper encima
   * (HotelDetail) Colocar dirección en el text del botón para ir al mapa
   * (HotelDetail) Si no hay reviews deshabilitar el boton para ir a los comentarios y cambiar el text del botón a "no comments"
   * (ReviewsView) Falta mucho estilo
   * (MapView) Falta indicar el nombre del hotel en el navbar y la dirección en el pin.

### Pods utilizados
   * Alamofire
   * Gloss
   * Kingfisher
   * [Cosmos] (Rating Star)

### Bonus
* Opción “ver mapa” que geolocaliza en un mapa el hotel. ✔
* ~~Aplicación universal~~ (No he probado en muchos dispositivos pero dudo que la vista sea universal, no pude con los **constraints** )
* ~~Tests unitarios de UI~~ (No llegué a esto tampoco, pero antes de entregar la Mac voy a investigar sobre el tema)

-------------------------


[Gloss]: <https://github.com/hkellaway/Gloss>
[Alamofire]: <https://github.com/Alamofire/Alamofire>
[Kingfisher]: <https://github.com/onevcat/Kingfisher>
[Cosmos]: <https://github.com/marketplacer/Cosmos>>
