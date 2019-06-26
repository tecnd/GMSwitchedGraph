CosetTest:= function(G, O, n)

local G1, subsG1, H, cos, orbs, i;

G1:=Stabilizer(G, 1);
subsG1:=Filtered(allSubgroups(G1), i->Order(G1)/Order(i)=O);
for H in subsG1 do
	cos:=RightCosets(G, H);
	orbs:=Orbits(H, cost, OnRight);
	for i in orbs do
		if Length(o)=n then
			Print(IsDistanceRegular(CosetGraph(G, H, [i])), "\n");
		fi;
	od;
od;

return;

end;