@login
Feature: Library app login feature
  User Story:
  As a user, I should be able to login with correct
  credentials to different accounts

  Background: Assuming user is on the login page
    Given user is on the login page

  @librarian @employee
  Scenario Outline: Login as librarian
    When user enters librarian username "<librarianUsername>"
    And user enters librarian password "<librarianPassword>"
    Then user should see the dashboard
    Examples:
      | librarianUsername   | librarianPassword |
      | librarian1@library  | tE1jRRsv          |
      | librarian2@library  | QKIlkj8g          |
      | librarian3@library  | Bqq9Ru0W          |
      | librarian4@library  | jvBFqXBK          |
      | librarian5@library  | GUgEFTI7          |
      | librarian6@library  | i0657Foh          |
      | librarian7@library  | gAsLZX3X          |
      | librarian8@library  | aOflwjvt          |
      | librarian9@library  | wmpjK04E          |
      | librarian10@library | 2U2PxN3Q          |
#      | librarian11@library | Ub5rCYuj          |
#      | librarian12@library | UPyaNWEb          |
#      | librarian13@library | P5FZ0PWN          |
#      | librarian14@library | O7aLLfay          |
#      | librarian15@library | TuVl5Mbg          |
#      | librarian16@library | exLD5EJt          |
#      | librarian17@library | Qkr8sjLv          |
#      | librarian18@library | Vo33TKUf          |
#      | librarian19@library | UrNTp9kl          |
#      | librarian20@library | gfYBji5Y          |
#      | librarian21@library | AbLeF10u          |
#      | librarian22@library | Dbm5W9if          |
#      | librarian23@library | q95XwWqY          |
#      | librarian24@library | DSmtyOLA          |
#      | librarian25@library | 5E3Zm2aY          |
#      | librarian26@library | 3cJDuOey          |
#      | librarian27@library | 14MiAmjT          |
#      | librarian28@library | FPZp82GD          |
#      | librarian29@library | rk17ZICc          |
#      | librarian30@library | k23pxm5l          |
#      | librarian31@library | UCxI5xNP          |
#      | librarian32@library | EiHrg8hB          |
#      | librarian33@library | hxzeTnXZ          |
#      | librarian34@library | Mu8PLRnC          |
#      | librarian35@library | WpAW5Nem          |
#      | librarian36@library | VlkA8lul          |
#      | librarian37@library | TS28WPow          |
#      | librarian38@library | 9rhYyFnD          |
#      | librarian39@library | Z1YOwaWX          |
#      | librarian40@library | 9RhsC7O8          |
#      | librarian41@library | H9fUZ02D          |
#      | librarian42@library | lEPX2hQA          |
#      | librarian43@library | vHQg1cYU          |
#      | librarian44@library | kEM38bMG          |
#      | librarian45@library | vzYBmsAe          |
#      | librarian46@library | fH9WD5xN          |
#      | librarian47@library | gGqiczyp          |
#      | librarian48@library | 84Y6XEvz          |
#      | librarian49@library | vYLhBoMH          |
#      | librarian50@library | qLH9wqjR          |
#      | librarian51@library | j7vTb0kH          |
#      | librarian52@library | NMhza8lG          |
#      | librarian53@library | UFEX2m3O          |
#      | librarian54@library | 9xxLqRCt          |
#      | librarian55@library | hbvuThAX          |
#      | librarian56@library | b5agV7u1          |
#      | librarian57@library | 8rStz7JA          |
#      | librarian58@library | UjnbVmlZ          |
#      | librarian59@library | XJbiyEbX          |
#      | librarian60@library | yNFS9ghh          |

  @student
  Scenario Outline: Login as student
    When user enters student username "<studentUsername>"
    And user enters student password "<studentPassword>"
    Then user should see the dashboard
    Examples:
      | studentUsername   | studentPassword |
      | student1@library  | aJ7lq2mS        |
      | student2@library  | Z1i6XQIR        |
      | student3@library  | UB1EMJAc        |
      | student4@library  | 8u6iaONh        |
      | student5@library  | 53mSP4iw        |
      | student6@library  | Ah7NyK8I        |
      | student7@library  | Z2RLTD0d        |
      | student8@library  | ET7VM9ZT        |
      | student9@library  | dOEwjFmN        |
      | student10@library | 3s3wvmPq        |
#      | student11@library | AimNorKI        |
#      | student12@library | Mg6X68Kn        |
#      | student13@library | 5DLSEDUZ        |
#      | student14@library | 4Zsmm2P2        |
#      | student15@library | ybMqPtRS        |
#      | student16@library | wol1P4cF        |
#      | student17@library | wUok5R42        |
#      | student18@library | 8usL2m1I        |
#      | student19@library | nCpem4oS        |
#      | student20@library | x6xmuCqC        |
#      | student21@library | 7LpiH4j0        |
#      | student22@library | wMwAmWDk        |
#      | student23@library | ODvWrBcM        |
#      | student24@library | 0GdGmhCX        |
#      | student25@library | fPHDwEhH        |
#      | student26@library | 6xhH92SU        |
#      | student27@library | PWr9ZNaW        |
#      | student28@library | wVoUPkGU        |
#      | student29@library | 2UkoLHNe        |
#      | student30@library | OpeW2YuP        |
#      | student31@library | DNQz9DZf        |
#      | student32@library | c14fxK19        |
#      | student33@library | GtmxeeGb        |
#      | student34@library | cBGXU1tA        |
#      | student35@library | YGKHU3Yu        |
#      | student36@library | ZRJVKue4        |
#      | student37@library | KSBO8Bxr        |
#      | student38@library | oKkLhNG3        |
#      | student39@library | mN0jlMNY        |
#      | student40@library | DqZDVwHN        |
#      | student41@library | dNa4ivRI        |
#      | student42@library | 4WexZKpQ        |
#      | student43@library | BjBzoBLV        |
#      | student44@library | sgn8SeZ3        |
#      | student45@library | jj1Vq1Qo        |
#      | student46@library | XekvIUPm        |
#      | student47@library | 4p1JKPwY        |
#      | student48@library | qTyWlX1W        |
#      | student49@library | iER23F4G        |
#      | student50@library | Y4P3f6sE        |
#      | student51@library | a3WRUdgK        |
#      | student52@library | clD8WjT9        |
#      | student53@library | nL8cM1Qi        |
#      | student54@library | F3Igb0NE        |
#      | student55@library | PxIZfJS8        |
#      | student56@library | kwvthTlx        |
#      | student57@library | hIwRjhUA        |
#      | student58@library | tdBxvzF8        |
#      | student59@library | pWDdLV69        |
#      | student60@library | B0HLSZoJ        |