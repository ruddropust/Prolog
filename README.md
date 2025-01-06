# Prolog Programming<br>
## In third.pl<br>
### Query Used<br>
?- parent(bob,ann).<br>
true.<br>
<br>
?- parent(tom,liz).<br>
true.<br>
<br>
?- parent(tom,loz).<br>
false.<br>
<br>
?- parent(tom,X).<br>
X = bom .<br>
<br>
?- parent(tom,X).<br>
X = bom ;<br>
X = liz ;<br>
X = kim.<br>
<br>
?- parent(A,bob).<br>
A = pam ;<br>
A = tom.<br>
## In four.pl<br>
### Query Used with this Problem<br>
![5](https://github.com/user-attachments/assets/87d9cea3-5978-438f-b13e-030733ba1737) <br>
?- fatherOf(paul,joe).<br>
false.<br>
<br>
?- motherOf(jane,mary).<br>
true.<br>
<br>
?- male(mary).<br>
false.<br>
<br>
?- male(paul).<br>
true.<br>
<br>
?- fatherOf(joe,X).<br>
X = paul ;<br>
X = mary.<br>
<br>
?- motherOf(jane,C).<br>
C = paul. <br>
C = mary.<br>
<br>
?- male(Z). <br>
Z = paul ; <br>
Z = joe. <br>

?- female(N).  <br>
N = mary ; <br>
N = jane.<br>
<br>
?- male(Male).<br>
Male = paul ;<br>
Male = joe.<br>
<br>
?- female(Female).<br>
Female = mary ;<br>
Female = jane.<br>

## In four.pl<br>
### Problem Statement<br>
Questions:<br>
1. Who are the emperor of HTML and CSS?<br>
2. Who are the emperor of HTML or CSS?<br>
3. Who are the emperor of love and likes dating?<br>
4. Show all the characteristics of minhaj.<br>
### Queries<br>
?- emperor(X,html),emperor(X,css).<br>
false.<br>
<br>
?- emperor(X,html);emperor(X,css).<br>
X = sadhin ;<br>
X = munna ;<br>
X = turza ;<br>
X = bipro.<br>
<br>
?- emperor(X,love),likes(X,dating).<br>
X = rajesh.<br>
<br>
?- emperor(minhaj,X);likes(minhaj,X).<br>
X = superman ;<br>
X = photograph.<br>
<br>
## In samrthome.pl or smarthomenext.pl<br>
### Problem Statement<br>
![15](https://github.com/user-attachments/assets/4237c24d-7687-47aa-8af4-c481a423d495)
 <br>
 ### Query Used<br>
 ?- start.  <br>
Enter the current temperature:  <br>
|: 25. <br>
Enter the desired temperature: <br>
|: 34. <br>
Is the home occupied? (yes/no): <br>
|: no. <br>
Enter the time of day (morning/afternoon/evening/night): <br>
|: night. <br>
Saving energy: Reduce heating or cooling. <br>
true . <br>
