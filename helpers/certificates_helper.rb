module CertificatesHelper
  def certificates
    [
      {
        keyword: :como_escribir_con_eficacia,
        description: "Ampliar y expandir las habilidades de comunicación escrita. Aprender, de manera práctica y paso a paso, cómo mejorar la efectividad de los textos para que sean comprendidos rápidamente y se obtengan los resultados que se han propuesto. Ejemplos: Cuando mandas un e-mail, ¿recibes la respuesta adecuada a lo que preguntas o pides? ¿O por el contrario, te contestan otra cosa o solo a una parte de lo que has solicitado? ¿Consigues provocar con tus palabras las acciones que solicitas o los cambios que deseas? ¿Leen tus interlocutores tus textos hasta el final, o aprecias que los han abandonado sin terminar? Y aun más importante, ¿entienden bien los demás lo que quieres transmitir?"
      },
      {
        keyword: :experiencia_de_usuario_esencial,
        description: "Aprender a realizar análisis e investigaciones de usuario para conocerlo y entender sus objetivos y necesidades, implementar los resultados en métricas y conceptos que le ayuden a medir el grado de usabilidad de producto y así optimizarlo para una mejor experiencia. Conocer los puntos clave de la arquitectura de información, para crear una estructura que aporte facilidad en encontrar las herramientas necesarias dentro del sitio. Conocer los elementos básicos para crear un diseño de interfaz y un prototipo interactivo que serán la imagen de tu producto.",
      },
      {
        keyword: :fundamentos_de_la_narrativa,
        description: "Mostrar los fundamentos del arte de crear una narración a partir de unos contenidos que se necesiten enseñar a un público expectante, ya sea mediante la expresión oral o la escrita. A partir de técnicas literarias, este curso introduce en el mundo del «Storytelling»: cómo narrar una historia coherente que el público sea capaz de recordar porque consigue transmitir emociones además de la información contenida en ella."
      }
    ]
  end

  def certificate_thumb(keyword)
    image_tag("certificates/thumbs/#{keyword}.webp", alt: keyword.to_s.titleize, class: 'img-fluid', loading: "lazy", width: "400", height: "289")
  end

  def certificate_image(keyword)
    image_tag("certificates/#{keyword}.webp", alt: keyword.to_s.titleize, class: 'img-fluid rounded mb-5', loading: "lazy", height:'515', width:'713')
  end
end
