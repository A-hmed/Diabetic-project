import 'package:flutter/material.dart';

class Diet extends StatefulWidget {
  @override
  State<Diet> createState() => _DietState();
}

class _DietState extends State<Diet> {
  List faqList = [];
  List faqContent = [];
  int? expandedTile;

  @override
  Widget build(BuildContext context) {
    fetchFaqs();
    return Scaffold(
      appBar: AppBar(
        title: Text("Diet"),
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) => Container(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16.5),
                    margin: EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[300],
                    ),
                    child: Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        tilePadding: EdgeInsets.zero,
                        onExpansionChanged: (isExpanded) {
                          setState(() {
                            if (isExpanded) {
                              expandedTile = index;
                            } else {
                              expandedTile = null;
                            }
                          });
                        },
                        title: Text(
                          faqList[index],
                        ),
                        trailing: Icon(
                          expandedTile == index
                              ? Icons.arrow_drop_up
                              : Icons.arrow_drop_down,
                        ),
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              faqContent[index],
                            ),
                          ),
                        ],
                      ),
                    )),
                itemCount: faqList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void fetchFaqs() {
    faqList = [
      "Low- Carb garlic chicken:(chicken)\n60 min, 50 Cal",
      'Goat cheese and mushroom pie:(vegan)\n35 Min ,774Cal',
      "Low-carb breakfast: (eggs)\n12 Min, 516Cal ",
      "Veggie Burgers with Tahini-Ranch Sauce \ntime:34m, caloris:654",
      "Strawberry-Chocolate Greek Yogurt Bark(desert)\nTime : 40m, calories: 400  "
    ];
    faqContent = [answer1, answer2, answer3,answer4,answer5];
  }

  String answer5 =
  "Ingredients"
  "\nIngredient Checklist"
  "\n3 cups whole-milk plain Greek yogurt"
  "\n¼ cup pure maple syrup or honey"
  "\n1 teaspoon vanilla extract"
  "\n1 ½ cups sliced strawberries"
  "\n¼ cup mini chocolate chips"
  "\nDirections Instructions Checklist"
  "\nStep 1"
  "\nLine a rimmed baking sheet with parchment paper."
  "\nStep 2"
  "\nStir yogurt, maple syrup (or honey) and vanilla in a medium bowl. Spread on the prepared baking sheet into a 10-by-15-inch rectangle. Scatter the strawberries on top and sprinkle with chocolate chips."
  "\nStep 3"
  "\nFreeze until very firm, at least 3 hours. To serve, cut or break into 32 pieces.";

  String answer4 =
  "Ingredients"
  "\nIngredient Checklist"
  "\n4 tablespoons tahini, divided"
  "\n1 tablespoon lemon juice"
  "\n3 teaspoons white miso, divided"
  "\n1 ¼ teaspoons onion powder, divided"
  "\n1 ¼ teaspoons garlic powder, divided"
  "\n1 ¼ teaspoons ground pepper, divided"
  "\n2 tablespoons water"
  "\n1 teaspoon chopped fresh chives plus 2 tablespoons, divided"
  "\n1 (15 ounce) can no-salt-added chickpeas, rinsed"
  "\n1 teaspoon ground cumin"
  "\n¼ teaspoon salt"
  "\n¼ cup fresh parsley leaves"
  "\n½ cup shredded zucchini"
  "\n⅓ cup old-fashioned rolled oats"
  "\n1 tablespoon extra-virgin olive oil"
  "\n4 whole-grain hamburger buns, toasted"
  "\n1 cup packed fresh arugula"
  "\n4 slices tomato"
  "\nDirectionsInstructions Checklist"
  "\nStep 1"
  "\nCombine 2 tablespoons tahini, lemon juice, 1 teaspoon miso, 1/2 teaspoon onion powder, 1/4 teaspoon garlic powder and 1/4 teaspoon pepper in a small bowl. Gradually whisk in water until the mixture is smooth. Stir in 1 teaspoon chives. Set aside."
 "\n Step 2"
  "\nPlace chickpeas, cumin, salt and the remaining 2 tablespoons tahini, 2 teaspoons miso, 1 teaspoon garlic powder, 1 teaspoon pepper and 3/4 teaspoon onion powder in a food processor. Pulse, stopping once or twice to scrape down the sides, until a coarse mixture forms that holds together when pressed. Add parsley and the remaining 2 tablespoons chives; pulse until the herbs are finely chopped and incorporated into the mixture. Transfer to a bowl."
  "\nStep 3"
  "\nSqueeze zucchini in a clean kitchen towel to remove extra moisture. Add the zucchini and oats to the chickpea mixture; use your hands to combine, pressing to mash together. Form into 4 patties."

  "\nStep 4"
  "\nHeat oil in a large nonstick skillet over medium-high heat. Add the patties and cook until golden and beginning to crisp, 4 to 5 minutes. Carefully flip and cook until golden brown, 2 to 4 minutes more."

  "\nStep 5"
  "\nServe the burgers on buns with the tahini-ranch sauce, arugula and tomato slices.";

  String answer3 = " Ingredients:"
      "\n2 eggs"
      "\n1\2 oz. butter"
      "\nSalt and pepper"
      "\n1\2 avocado, scooped out and cut into wedges"
      "\n1 tomato, sliced"
      "\n1\2 cup of baby spinach"
      "\n1 cup coffee"
      "\n2 tbsp heavy whipping cream"
      "\nInstructions:"
      "\n1.Heat butter in frying pan over medium heat."
      "\n2.Crack your eggs straight into the pan. For eggs sunny side up- leave the eggs to fry on one side. For eggs cooked over easy- flip the eggs over after a few minutes and cook for another minute. For harder yolks, just leave cooking for a few more minutes. Season with salt and pepper."
      "\n3.Serve with baby spinach, tomato, avocado, and a cup of freshly brewed black coffee or a cup of tea with cream";

  String answer2 = "Ingredients:"
      "\n5 oz. mushrooms"
      "\n3 oz. (2 cups ) fresh spinach"
      "\n2 oz. (9 tbsp) scallions"
      "\n2 oz. butter"
      "\n6 eggs"
      "\n4 oz. goat cheese"
      "\n5 oz. leafy greens"
      "\n2 tbsp olive oil"
      "\nSalt and pepper"
      "\nInstructions"
      "\n1.preheat the oven to 350 F"
      "\n2.Crack eggs into mixing bowl and whisk. Grate or crumble cheese and add to mixture. Season with salt and pepper to taste"
      "\n3.Cut the mushrooms into wedges. Chop the scallions"
      "\n4.Melt the butter in an oven proof skillet and cook the mushrooms and scallions over medium heat for 5-10 minutes or until golden brown"
      "\n5.Add spinach to pan and saute for another 1-2 minutes. Season with salt and pepper."
      "\n6.Pour the egg mixture into the skillet. Place skillet undercoverd in the oven and bake for about 20 minutes or until golden brown and set in the middle"
      "\n7.serve with leafy greens and olive oil.";

  String answer1 = "Ingredients:"
      "\n2 oz. butter"
      "\n2 lbs chicken drumsticks"
      "\n  Salt and paper"
      "\n1 lemon, the juice"
      "\n2 tbsp olive oil"
      "\n7 garlic cloves, sliced"
      "\n1\2 cup (1 oz.) fresh parsley, finely chopped"
      "\nInstructions"
      "\n1.preheat the oven to 450 F"
      "\n2.grease the backing pan generously with the butter and place the chicken drumsticks in the pan. salt and pepper to taste"
      "\n3.drizzle the lemon juice and olive oil over the chicken pieces. sprinkle the garlic and parsley on top"
      "\n4.Bake the chicken until golden and the garlic slices have turned brown and roasted for about 30-40 minutes or until the internal temperature reaches at least 165 F. the backing time may be longer if your drumsticks are on the larger size. You can lower the end of the temperature a little towards the end of the baking time if your drumsticks are becoming too dark";
}
