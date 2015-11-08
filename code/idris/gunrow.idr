module gunrow

import list

data country = Argentina | Australia | Austria | Honduras | USA

||| A record of this type represents a country and the death rate per 10,000,000 by gun for homocides, suicides, unintentional, other
data gunrow = mkGunrow country Nat Nat Nat Nat

countryName: gunrow -> country
countryName (mkGunrow a b c d e) = a

homicidePer10M: gunrow -> Nat
homicidePer10M (mkGunrow a b c d e) = b

suicidePer10M: gunrow -> Nat
suicidePer10M (mkGunrow a b c d e) = c

unintentionalPer10M: gunrow -> Nat
unintentionalPer10M (mkGunrow a b c d e) = d

otherPer10M: gunrow -> Nat
otherPer10M (mkGunrow a b c d e) = e

argen: gunrow
argen = mkGunrow Argentina 190 279 64 362

Austral: gunrow
Austral = mkGunrow Australia 11 62 5 8

Aust: gunrow
Aust = mkGunrow Austria 18 268 1 8

Hond: gunrow 
Hond = mkGunrow Honduras 648 0 0 0

United: gunrow
United = mkGunrow USA 355 670 16 9

fiveRecords: list gunrow
fiveRecords = (cons argen (cons Austral (cons Aust (cons Hond (cons United nil)))))


