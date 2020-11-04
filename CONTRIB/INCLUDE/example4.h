
/* [FR] Ceci permet d'acceder au main() de votre fonction. Prenez exemple! 
        elle est executée depuis le wrapper "_CPC_WPR.CPP" */

/* [EN] This allow access to your function main(). Take this example! 
        her is executed from the wrapper "_CPC_WPR.CPP" */

namespace example4
{
	extern int cpc__example4_main();
	
	class my_example_4
	{
		public:
		my_example_4();
	};
	
	my_example_4::my_example_4()
	{
		example4::cpc__example4_main();
	}
	
}