# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users_list = User.create([{first_name: 'Krzysiek',
                           last_name: 'Niepok',
                           email: '123@123.pl',
                           password: '123123',
                          },
                          {first_name: 'twoj',
                           last_name: 'rodzic',
                           email: '123@321.pl',
                           password: '123123',
                          }
                         ])

markets_list = Market.create([{adress: 'Carrefour złota 54',
                               latitude: '32.123124',
                               longitude: '21.12121'
                              },
                              {adress: 'Żabka Al. Ujazdowskie',
                               latitude: '12.1212121',
                               longitude: '32.12121'
                              },
                             ])
shopping_sessions_list =ShoppingSession.create([{name: 'Zakupy 11.11.2015',
                               user_id: '1',
                               market_id: '1'
                              },
                              {name: 'Zakupy do domu 20.11.2015',
                               user_id: '1',
                               market_id: '2'
                              },
                             ])
categories_list = Category.create([{name: 'Priority',

                                    description: 'most important stuff'
                                   },
                                   {name: 'Important',

                                    description: 'second most important stuff'},
                                   {name: 'Average',

                                    description: 'meager stuff'
                                   },
                                   {name: 'Not important',

                                    description: 'not important stuff'
                                   },
                                   {name: 'Least important',

                                    description: 'least important stuff'}

                                  ])


products_list = Product.create([{name: 'Masło orzechowe kremowe 350 g',
                                 category_id: "3",
                                 barcode: '5900571050020'
                                },
                                {name: 'Cisowianka Naturalna woda mineralna niegazowana niskosodowa 1,5 l',
                                 category_id: '1',
                                 barcode: '5902078000201'
                                },
                                {name: 'Frosch Balsam do mycia naczyń cytrynowy 500 ml',
                                 category_id: '1',
                                 barcode: '4009175148117'
                                },
                                {name: 'Aksam Orzeszki Beskidzkie w karmelu 100 g',
                                 category_id: '5',
                                 barcode: '5907029001009'
                                },
                                {name: 'Alpenliebe Espresso Cukierki kawowe 30 g',
                                 category_id: '4',
                                 barcode: '5902078000201'
                                },
                                {name: 'Kasza jęczmienna Melvit 400g mazurska',
                                 category_id: '2',
                                 barcode: '5906827002409'
                                },

                               ])

marketproducts_list = MarketProduct.create([{price: '9.50',
                                             market_id: "1",
                                             product_id: '1'
                                            },
                                            {price: '2.50',
                                             market_id: "1",
                                             product_id: '2'
                                            },
                                            {price: '10.07',
                                             market_id: "2",
                                             product_id: '1'
                                            },
                                            {price: '2.29',
                                             market_id: "2",
                                             product_id: '2'
                                            },
                                            {price: '7.40',
                                             market_id: "1",
                                             product_id: '3'
                                            },
                                            {price: '7.20',
                                             market_id: "2",
                                             product_id: '3'
                                            },
                                            {price: '1.78',
                                             market_id: "1",
                                             product_id: '4'
                                            },
                                            {price: '1.90',
                                             market_id: "2",
                                             product_id: '4'
                                            },
                                            {price: '1.56',
                                             market_id: "2",
                                             product_id: '5'
                                            },
                                            {price: '1.70',
                                             market_id: "1",
                                             product_id: '5'
                                            },

                                           ])

listings_list = Listing.create([{amount: '10',
                           market_product_id: '2',
                           shopping_session_id: '1',
                          },
                                {amount: '5',
                                 market_product_id: '1',
                                 shopping_session_id: '1',
                                },
                                {amount: '3',
                                 market_product_id: '5',
                                 shopping_session_id: '1',
                                },
                                {amount: '7',
                                 market_product_id: '7',
                                 shopping_session_id: '1',
                                },
                                {amount: '2',
                                 market_product_id: '10',
                                 shopping_session_id: '1',
                                },
                                {amount: '4',
                                 market_product_id: '3',
                                 shopping_session_id: '2',
                                },
                                {amount: '1',
                                 market_product_id: '4',
                                 shopping_session_id: '2',
                                },
                                {amount: '13',
                                 market_product_id: '6',
                                 shopping_session_id: '2',
                                },
                                {amount: '11',
                                 market_product_id: '9',
                                 shopping_session_id: '2',
                                },
                         ])

