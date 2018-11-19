# Zifra Encrypting Memory Card

## Background

The project was started by Zifra Tech AB, a Swedish startup from Chalmers University. The goal was to build an open hardware memory card that could encrypt any type of file on-the-fly in any device with an SD host. The targeted use case was journalists and human rights workers that handle highly sensitive information (A letter of intent was signed with the OCCRP - a journalistic network in easter Europe - to buy the first 100 cards and to use them on the field). The company was dissolved due to a lack of resources to solve the technical challenges at hand. The rights to the trademark "Zifra" and source code was transferred to the non-profit organisation Zifra Foundation. The goal of the foundation is two-fold: 1) is to manage and facilitate the Zifra open source project 2) to help distribute hardware that can strengthen democracy, human rights and journalism around the world. Read more about the Zifra Foundation at https//zifra.tech.

We didn't get the technology off the ground as a company but we still believe in the technology. User-friendly encryption is paramount for free press and open societies. There is a need for a memory card that can "encrypt at the source". We hope this community can make it happen. Please spread this project to anyone who might be interested in open hardware and security. You can always donate to the Zifra Foundation to help us manage this project and bring secure open hardware to journalists and human rights workers around the world.

## Contact

hello@zifra.tech

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

The repos are generated using Vivado 2017.4.
The FPGA used is an Artix-7 (xc7a100tcsg324-2) but can easily be modified to be used on other FPGA.
The test bench for the chacha uses an microblaze so this needs Vivado to work.


### Installing
	Not applicable

## chacha test

In the chacha folder there is a test bench and some source files.
To run the test bench create a Vivado project and add thees files to it.
Run simulation for 2500 ns.

If everything is correct chacha will encrypt two data words and decrypt them afterwords.
Se wave pattern.

## SD Slave test
There is an SD slave test environment where you can send mcc request to the SD slave from terminal emulator.
Fore more detail se documentation.

## Deployment

Add additional notes about how to deploy this on a live system


## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Authors (Founding team)

* **Fredrik Strömberg** - *Solution Architect*
* **Torbjörn Rasmusson** - *Initial work*
* **Antti Lukats** - *Work and supervision*
* **Robin Johansson** - *Business and product development*
* **Victor Waldenström** - *Business and product development*

The project was funded through **Chalmers Ventures** and **Startup Reykjavik Invest** who very generously waived there claims on the code for the benefit of this project.


## Acknowledgments

--TODO

## Disclaimer

Parts of this solution relating to the SD slave might be patented technology and a license from the SD association might be required in order to commercialise the technology.  
