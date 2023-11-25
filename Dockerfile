FROM peaceiris/mdbook:v0.4.4

COPY . /book

CMD [ "serve", "--hostname", "0.0.0.0" ]