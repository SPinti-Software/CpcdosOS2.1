
/* [FR] Ceci permet d'acceder au main() de votre fonction. Prenez exemple! 
        elle est executée depuis le wrapper "_CPC_WPR.CPP" */

/* [EN] This allow access to your function main(). Take this example! 
        her is executed from the wrapper "_CPC_WPR.CPP" */

namespace example1
{
	extern int cpc__example1_main();
	
	class my_example_1
	{
		public:
		my_example_1();
	};
	
	my_example_1::my_example_1()
	{
		example1::cpc__example1_main();
	}
	
}