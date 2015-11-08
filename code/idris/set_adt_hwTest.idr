import bool
import option
import pair
import list
import nat
import eq
import Serialize
import list
import set_adt_hw

--expecting true
emptyTest1: bool
emptyTest1 = isEmpty (mkSet nil) {a = nat}

--expecting false
emptyTest2: bool
emptyTest2 = isEmpty (mkSet (true::false::nil))

--expecting (mkSet (S O :: S (S O) :: nil))
insertTest1: set nat
insertTest1 = set_insert (S O) (mkSet ((S(S O))::nil))

--expecting (mkSet (S (S O) :: nil)
insertTest2: set nat
insertTest2 = set_insert (S (S O)) (mkSet ((S(S O))::nil))

--expecting (mkSet ((S (S O))::nil))
removeTest1: set nat
removeTest1 = set_remove (S O) (mkSet ((S O)::(S (S O))::nil))

--expecting (mkSet ((S O)::(S (S O))::nil))
removeTest2: set nat
removeTest2 = set_remove O (mkSet ((S O)::(S (S O))::nil))

--expecting O
cardinalityTest1: nat
cardinalityTest1 = set_cardinality (mkSet nil) {a = nat}

--expecting (S (S (S O)))
cardinalityTest2: nat
cardinalityTest2 = set_cardinality (mkSet (O::(S O)::(S (S O))::nil))

--expecting false
memberTest1: bool
memberTest1 = set_member (S O) (mkSet (O::(S (S O))::nil))

--expecting true
memberTest2: bool
memberTest2 = set_member (S O) (mkSet (O::(S O)::nil))

--expecting mkSet (O::(S O)::nil)
unionTest1: set nat
unionTest1 = set_union (mkSet (O::nil)) (mkSet ((S O)::nil))

--expecting mkSet ((S O)::nil)
unionTest2: set nat
unionTest2 = set_union (mkSet nil) (mkSet ((S O)::nil)) {a = nat}

--expecting mkSet nil
intersectTest1: set nat
intersectTest1 = set_intersection (mkSet nil) (mkSet ((S O)::nil))

--expecting mkSet ((S O)::nil)
intersectTest2: set nat
intersectTest2 = set_intersection (mkSet ((S O)::nil)) (mkSet ((S O)::nil))

--expecting mkSet (O::(S O)::nil)
differenceTest1: set nat
differenceTest1 = set_difference (mkSet (O::(S O)::nil)) (mkSet nil)

--expecting mkSet (O::nil)
differenceTest2: set nat
differenceTest2 = set_difference (mkSet (O::(S O)::nil)) (mkSet ((S O)::nil))

--expecting true
forallTest1: bool
forallTest1 = set_forall evenb (mkSet (O::(S(S O))::nil))

--expecting false
forallTest2: bool
forallTest2 = set_forall evenb (mkSet (O::(S O)::(S(S O))::nil))

--expecting true
existsTest1: bool
existsTest1 = set_exists evenb (mkSet (O::(S O)::nil))

--expecting false
existsTest2: bool
existsTest2 = set_exists evenb (mkSet ((S O)::nil))

--expecting none
witnessTest1: option nat
witnessTest1 = set_witness evenb (mkSet ((S O)::nil))

--expecting some O
witnessTest2: option nat
witnessTest2 = set_witness evenb (mkSet (O::nil))

--expecting mkSet (mkPair O true :: mkPair O false :: mkPair (S O)
--true :: mkPair (S O) false :: nil)
productTest1: set (pair nat bool)
productTest1 = set_product (mkSet (O::(S O)::nil)) (mkSet (true::false::nil))

--expecting mkSet nil
productTest2: set (pair nat bool)
productTest2 = set_product (mkSet nil) (mkSet nil) {a = nat}

--expecting true
eqlTest1: bool
eqlTest1 = eql_set (mkSet (O::(S O)::nil)) (mkSet (O::(S O)::nil))

--expecting false
eqlTest2: bool
eqlTest2 = eql_set (mkSet (O::(S O)::nil)) (mkSet (O::nil))

--expecting {Z,sZ}
StringTest1: String
StringTest1 = set_toString (mkSet (O::(S O)::nil))

--expeting {True,False}
StringTest2: String
StringTest2 = set_toString (mkSet (true::false::nil))
