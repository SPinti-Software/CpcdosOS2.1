
/* [FR] Ceci permet d'acceder au main() de votre fonction. Prenez exemple! 
        elle est executée depuis le wrapper "_CPC_WPR.CPP" */

/* [EN] This allow access to your function main(). Take this example! 
        her is executed from the wrapper "_CPC_WPR.CPP" */

namespace example2
{
	extern int cpc__example2_main();
	
	class my_example_2
	{
		public:
		my_example_2();
	};
	
	my_example_2::my_example_2()
	{
		example2::cpc__example2_main();
	}
	
}