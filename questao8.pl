ultimo([Y],Y).
ultimo([_|X],Y):- ultimo(X,Y).
