
/* [FR] Ceci permet d'acceder au main() de votre fonction. Prenez exemple! 
        elle est executée depuis le wrapper "_CPC_WPR.CPP" */

/* [EN] This allow access to your function main(). Take this example! 
        her is executed from the wrapper "_CPC_WPR.CPP" */

namespace example3
{
	extern int cpc__example3_main();
	
	class my_example_3
	{
		public:
		my_example_3();
	};
	
	my_example_3::my_example_3()
	{
		example3::cpc__example3_main();
	}
	
}