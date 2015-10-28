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

markets_list = Market.create([{adress: 'Janusza pawlacza 3',
                               latitude: '32.123124',
                               longitude: '21.12121'
                              },
                              {adress: 'twojego starego 2',
                               latitude: '12.1212121',
                               longitude: '32.12121'
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


products_list = Product.create([{name: 'Bułka',
                                 category_id: "1",
                                 barcode: '5901id2345'
                                },
                                {name: 'Jajko',
                                 category_id: '1',
                                 barcode: '50193955'
                                },
                                {name: 'Piwko',
                                 category_id: '2',
                                 barcode: '2323504'
                                }
                               ])

marketproducts_list = MarketProduct.create([{price: '0.35',
                                             market_id: "1",
                                             product_id: '1'
                                            },
                                            {price: '0.28',
                                             market_id: "1",
                                             product_id: '2'
                                            },
                                            {price: '3.50',
                                             market_id: "1",
                                             product_id: '3'
                                            },
                                            {price: '0.30',
                                             market_id: "2",
                                             product_id: '2'
                                            },
                                            {price: '3.40',
                                             market_id: "2",
                                             product_id: '3'
                                            }
                                           ])

