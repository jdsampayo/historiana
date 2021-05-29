module CertificatesHelper
  def certificates
    [
      {
        keyword: :como_escribir_con_eficacia,
        description: "Ampliar y expandir las habilidades de comunicación escrita. Aprender, de manera práctica y paso a paso, cómo mejorar la efectividad de los textos para que sean comprendidos rápidamente y se obtengan los resultados que se han propuesto. Ejemplos: Cuando mandas un e-mail, ¿recibes la respuesta adecuada a lo que preguntas o pides? ¿O por el contrario, te contestan otra cosa o solo a una parte de lo que has solicitado? ¿Consigues provocar con tus palabras las acciones que solicitas o los cambios que deseas? ¿Leen tus interlocutores tus textos hasta el final, o aprecias que los han abandonado sin terminar? Y aun más importante, ¿entienden bien los demás lo que quieres transmitir?"
      }
    ]
  end

  def certificate_thumb(keyword)
    image_tag("certificates/thumbs/#{keyword}.webp", alt: keyword.to_s.titleize, class: 'img-fluid', loading: "lazy")
  end

  def certificate_image(keyword)
    image_tag("certificates/#{keyword}.webp", alt: keyword.to_s.titleize, class: 'img-fluid rounded mb-5', loading: "lazy")
  end
end
