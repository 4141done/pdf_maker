# PdfMaker

PdfMaker is a micro-service that takes HTML and generates a PDF file.

## Installation

A [Docker image](https://cloud.docker.com/u/ciroque/repository/docker/ciroque/pdf_maker) is available. 

 * Use `docker pull ciroque/pdf_maker` to retrieve the image
 * Run with `docker run -dit -p 4000:4000 ciroque/pdf_maker`

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)

## Development 

 * Fork the repo to your account.
 * Clone the repo: `bash git clone git@github.com:/<account>/pdf_maker`
 * Change directory to project directory: `cd pdf_maker`
 * Install dependencies with `mix deps.get`
 * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.


#### Learn more about Elixir and Phoenix

  * Official website: http://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix

## Authors

* **Steve Wagner** - _Initial work_ - [ciroque](https://github.com/ciroque)
