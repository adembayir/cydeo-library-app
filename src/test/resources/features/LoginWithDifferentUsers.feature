@login
Feature: Library app login feature
  User Story:
  As a user, I should be able to login with correct
  credentials to different accounts

  Background: Assuming user is on the login page
    Given user is on the login page

  @librarian @employee @wip
  Scenario Outline: Verify user information <email>
    When user logs in using "<email>" and "<password>"
    Then account holder name should be "<name>"

    @librarian
    Examples:
      | email               | password | name              |
      | librarian1@library  | tE1jRRsv | Test Librarian 1  |
      | librarian2@library  | QKIlkj8g | Test Librarian 2  |
      | librarian3@library  | Bqq9Ru0W | Test Librarian 3  |
      | librarian4@library  | jvBFqXBK | Test Librarian 4  |
      | librarian5@library  | GUgEFTI7 | Test Librarian 5  |
      | librarian6@library  | i0657Foh | Test Librarian 6  |
      | librarian7@library  | gAsLZX3X | Test Librarian 7  |
#      | librarian8@library  | aOflwjvt | Test Librarian 8  |
#      | librarian9@library  | wmpjK04E | Test Librarian 9  |
#      | librarian10@library | 2U2PxN3Q | Test Librarian 10 |
#      | librarian11@library | Ub5rCYuj | Test Librarian 11 |
#      | librarian12@library | UPyaNWEb | Test Librarian 12 |
#      | librarian13@library | P5FZ0PWN | Test Librarian 13 |
#      | librarian14@library | O7aLLfay | Test Librarian 14 |
#      | librarian15@library | TuVl5Mbg | Test Librarian 15 |
#      | librarian16@library | exLD5EJt | Test Librarian 16 |
#      | librarian17@library | Qkr8sjLv | Test Librarian 17 |
#      | librarian18@library | Vo33TKUf | Test Librarian 18 |
#      | librarian19@library | UrNTp9kl | Test Librarian 19 |
#      | librarian20@library | gfYBji5Y | Test Librarian 20 |
#      | librarian21@library | AbLeF10u | Test Librarian 21 |
#      | librarian22@library | Dbm5W9if | Test Librarian 22 |
#      | librarian23@library | q95XwWqY | Test Librarian 23 |
#      | librarian24@library | DSmtyOLA | Test Librarian 24 |
#      | librarian25@library | 5E3Zm2aY | Test Librarian 25 |
#      | librarian26@library | 3cJDuOey | Test Librarian 26 |
#      | librarian27@library | 14MiAmjT | Test Librarian 27 |
#      | librarian28@library | FPZp82GD | Test Librarian 28 |
#      | librarian29@library | rk17ZICc | Test Librarian 29 |
#      | librarian30@library | k23pxm5l | Test Librarian 30 |
#      | librarian31@library | UCxI5xNP | Test Librarian 31 |
#      | librarian32@library | EiHrg8hB | Test Librarian 32 |
#      | librarian33@library | hxzeTnXZ | Test Librarian 33 |
#      | librarian34@library | Mu8PLRnC | Test Librarian 34 |
#      | librarian35@library | WpAW5Nem | Test Librarian 35 |
#      | librarian36@library | VlkA8lul | Test Librarian 36 |
#      | librarian37@library | TS28WPow | Test Librarian 37 |
#      | librarian38@library | 9rhYyFnD | Test Librarian 38 |
#      | librarian39@library | Z1YOwaWX | Test Librarian 39 |
#      | librarian40@library | 9RhsC7O8 | Test Librarian 40 |
#      | librarian41@library | H9fUZ02D | Test Librarian 41 |
#      | librarian42@library | lEPX2hQA | Test Librarian 42 |
#      | librarian43@library | vHQg1cYU | Test Librarian 43 |
#      | librarian44@library | kEM38bMG | Test Librarian 44 |
#      | librarian45@library | vzYBmsAe | Test Librarian 45 |
#      | librarian46@library | fH9WD5xN | Test Librarian 46 |
#      | librarian47@library | gGqiczyp | Test Librarian 47 |
#      | librarian48@library | 84Y6XEvz | Test Librarian 48 |
#      | librarian49@library | vYLhBoMH | Test Librarian 49 |
#      | librarian50@library | qLH9wqjR | Test Librarian 50 |
#      | librarian51@library | j7vTb0kH | Test Librarian 51 |
#      | librarian52@library | NMhza8lG | Test Librarian 52 |
#      | librarian53@library | UFEX2m3O | Test Librarian 53 |
#      | librarian54@library | 9xxLqRCt | Test Librarian 54 |
#      | librarian55@library | hbvuThAX | Test Librarian 55 |
#      | librarian56@library | b5agV7u1 | Test Librarian 56 |
#      | librarian57@library | 8rStz7JA | Test Librarian 57 |
#      | librarian58@library | UjnbVmlZ | Test Librarian 58 |
#      | librarian59@library | XJbiyEbX | Test Librarian 59 |
#      | librarian60@library | yNFS9ghh | Test Librarian 60 |

    @student
    Examples:
      | email             | password | name            |
      | student1@library  | aJ7lq2mS | Test Student 1  |
      | student2@library  | Z1i6XQIR | Test Student 2  |
      | student3@library  | UB1EMJAc | Test Student 3  |
      | student4@library  | 8u6iaONh | Test Student 4  |
      | student5@library  | 53mSP4iw | Test Student 5  |
      | student6@library  | Ah7NyK8I | Test Student 6  |
      | student7@library  | Z2RLTD0d | Test Student 7  |
#      | student8@library  | ET7VM9ZT | Test Student 8  |
#      | student9@library  | dOEwjFmN | Test Student 9  |
#      | student10@library | 3s3wvmPq | Test Student 10 |
#      | student11@library | AimNorKI | Test Student 11 |
#      | student12@library | Mg6X68Kn | Test Student 12 |
#      | student13@library | 5DLSEDUZ | Test Student 13 |
#      | student14@library | 4Zsmm2P2 | Test Student 14 |
#      | student15@library | ybMqPtRS | Test Student 15 |
#      | student16@library | wol1P4cF | Test Student 16 |
#      | student17@library | wUok5R42 | Test Student 17 |
#      | student18@library | 8usL2m1I | Test Student 18 |
#      | student19@library | nCpem4oS | Test Student 19 |
#      | student20@library | x6xmuCqC | Test Student 20 |
#      | student21@library | 7LpiH4j0 | Test Student 21 |
#      | student22@library | wMwAmWDk | Test Student 22 |
#      | student23@library | ODvWrBcM | Test Student 23 |
#      | student24@library | 0GdGmhCX | Test Student 24 |
#      | student25@library | fPHDwEhH | Test Student 25 |
#      | student26@library | 6xhH92SU | Test Student 26 |
#      | student27@library | PWr9ZNaW | Test Student 27 |
#      | student28@library | wVoUPkGU | Test Student 28 |
#      | student29@library | 2UkoLHNe | Test Student 29 |
#      | student30@library | OpeW2YuP | Test Student 30 |
#      | student31@library | DNQz9DZf | Test Student 31 |
#      | student32@library | c14fxK19 | Test Student 32 |
#      | student33@library | GtmxeeGb | Test Student 33 |
#      | student34@library | cBGXU1tA | Test Student 34 |
#      | student35@library | YGKHU3Yu | Test Student 35 |
#      | student36@library | ZRJVKue4 | Test Student 36 |
#      | student37@library | KSBO8Bxr | Test Student 37 |
#      | student38@library | oKkLhNG3 | Test Student 38 |
#      | student39@library | mN0jlMNY | Test Student 39 |
#      | student40@library | DqZDVwHN | Test Student 40 |
#      | student41@library | dNa4ivRI | Test Student 41 |
#      | student42@library | 4WexZKpQ | Test Student 42 |
#      | student43@library | BjBzoBLV | Test Student 43 |
#      | student44@library | sgn8SeZ3 | Test Student 44 |
#      | student45@library | jj1Vq1Qo | Test Student 45 |
#      | student46@library | XekvIUPm | Test Student 46 |
#      | student47@library | 4p1JKPwY | Test Student 47 |
#      | student48@library | qTyWlX1W | Test Student 48 |
#      | student49@library | iER23F4G | Test Student 49 |
#      | student50@library | Y4P3f6sE | Test Student 50 |
#      | student51@library | a3WRUdgK | Test Student 51 |
#      | student52@library | clD8WjT9 | Test Student 52 |
#      | student53@library | nL8cM1Qi | Test Student 53 |
#      | student54@library | F3Igb0NE | Test Student 54 |
#      | student55@library | PxIZfJS8 | Test Student 55 |
#      | student56@library | kwvthTlx | Test Student 56 |
#      | student57@library | hIwRjhUA | Test Student 57 |
#      | student58@library | tdBxvzF8 | Test Student 58 |
#      | student59@library | pWDdLV69 | Test Student 59 |
      | student60@library | B0HLSZoJ | Test Student 60 |