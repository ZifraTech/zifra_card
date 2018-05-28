# Zifra card

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

The repos are generated using Vivado 2017.4.
The FPGA used is an Artix-7 (xc7a100tcsg324-2) but can easely be modified to be used on other FPGA.
The test bench fore the chacha uses an microblaze so this needs Vivado to work.


### Installing
	Not aplicable

## chacha test

In the chacha folder there is an tb and some sorce files.
To run the testbench create an vivado project and add thees files to it.
Run simulation fore 2500 ns.

If everithing is corect chacha will encrypt two data words and decrypt them afterwords.
Se wawe pattern.

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc


