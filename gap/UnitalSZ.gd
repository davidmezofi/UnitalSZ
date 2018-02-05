#
# UnitalSZ: Algorithms and library of unitals of projective planes
#
# Declarations
#

DeclareCategory( "IsAU_UnitalDesign", IsObject );
DeclareSynonym( "IsAU_Unital", IsAU_UnitalDesign );
DeclareSynonym( "IsAU_AbstractUnital", IsAU_UnitalDesign );

DeclareRepresentation( "IsAU_UnitalDesignRep", IsComponentObjectRep and
                       IsAttributeStoringRep, [ "bmat" ] );
AU_UnitalDesignFamily := NewFamily( "AbstractUnitalDesignFam" );

#! @Arguments bmat
#! @Returns
#!   <K>true</K> if <A>bmat</A> is the blist list of an abstract unital.
#! @Description
#!   Each row of <A>bmat</A> corresponds to a block of the unital. We check the
#!   sizes of the blocks and the sizes of the intersections of the dual blocks.
DeclareGlobalFunction( "AU_UnitalBlistList_axiomcheck" );
#! @Arguments bmat
#! @Returns
#!   <K>true</K> if <A>bmat</A> is the blist list of an abstract unital.
#! @Description
#!   Each row of <A>bmat</A> corresponds to a block of the unital. We check the
#!   sizes of the blocks and the sizes of the intersections of the dual blocks.
#!   Wrong <A>bmat</A> matrix size drops error.
DeclareGlobalFunction( "IsAU_UnitalBlistList" );
#! @Arguments incmat
#! @Returns
#!   <K>true</K> if <A>incmat</A> is the incidence matrix of an abstract unital.
#! @Description
#!   Each row of <A>incmat</A> corresponds to a block of the unital. We check
#!   the sizes of the blocks and the sizes of the intersections of the dual
#!   blocks. Wrong <A>incmat</A> matrix size drops error.
DeclareGlobalFunction( "IsAU_UnitalIncidenceMatrix" );
#! @Arguments blocklist
#! @Returns
#!   <K>true</K> if <A>blocklist</A> is the list of blocks of an abstract
#!   unital.
#! @Description
#!   We check the sizes of the blocks and the sizes of the intersections of the
#!   dual blocks. Wrong number of blocks or wrong number of points (union of the
#!   blocks in <A>blocklist</A>) drops error.
DeclareGlobalFunction( "IsAU_UnitalBlockDesign" );

#! @Arguments bmat
#! @Returns
#!   The unital object corresponding to the blist list <A>bmat</A>.
#! @Description
#!   The function stores <A>bmat</A> and sets the order of the unital. The
#!   function <E>do not check</E> the necessary conditions (the size of bmat,
#!   the sizes of the blocks and their intersections).
DeclareGlobalFunction( "AU_UnitalByBlistListNC" );
#! @Arguments bmat
#! @Returns
#!   The unital object corresponding to the blist list <A>bmat</A>.
#! @Description
#!   Each row of <A>bmat</A> corresponds to a block of the unital. We check the
#!   sizes of the blocks and the sizes of the intersections of the dual blocks.
#!   Wrong <A>bmat</A> matrix size drops error. The function stores <A>bmat</A>
#!   and sets the <C>Order</C> of the unital.
DeclareGlobalFunction( "AU_UnitalByBlistList" );
#! @Arguments blocklist
#! @Returns
#!   The unital object corresponding to the list of blocks <A>blocklist</A>.
# @Description
#!   We check the sizes of the blocks and the sizes of the intersections of the
#!   dual blocks. Wrong number of blocks or wrong number of points (union of the
#!   blocks in <A>blocklist</A>) drops error. The function stores <C>bmat</C>,
#!   which is based on <A>blocklist</A>, sets the <C>Order</C> of the unital and
#!   sets the names of the points, <C>PointNamesOfUnital</C> of the unital.
DeclareGlobalFunction( "AU_UnitalByDesignBlocks" );
#! @Arguments incmat
#! @Returns
#!   The unital object corresponding to the incidence matrix <A>incmat</A>.
#! @Description
#!   Each row of <A>incmat</A> corresponds to a block of the unital. We check
#!   the sizes of the blocks and the sizes of the intersections of the dual
#!   blocks. Wrong <A>incmat</A> matrix size drops error. The function stores
#!   <C>bmat</C>, which is based on <A>incmat</A> and sets the <C>Order</C> of
#!   the unital.
DeclareGlobalFunction( "AU_UnitalByIncidenceMatrix" );


#! @Description
#!   Insert documentation for you function here
DeclareAttribute( "PointsOfUnital", IsAU_UnitalDesign );
#! @Description
#!   Insert documentation for you function here
DeclareAttribute( "BlocksOfUnital", IsAU_UnitalDesign );
#! @Description
#!   Insert documentation for you function here
DeclareAttribute( "PointNamesOfUnital", IsAU_UnitalDesign );
#! @Description
#!   Insert documentation for you function here
DeclareAttribute( "IncidenceDigraph", IsAU_UnitalDesign );
#! @Description
#!   Insert documentation for you function here
DeclareAttribute( "AutomorphismGroup", IsAU_UnitalDesign );
#! @Description
#!   Insert documentation for you function here
DeclareOperation( "Isomorphism", [ IsAU_UnitalDesign, IsAU_UnitalDesign ] );
#! @Arguments q
#! @Returns
#!   The classical unital object, which is the abstract unital of order <A>q</A>
#!   isomorphic to the Hermitian curve in the classical projective plane.
#! @Description
#!   The Hermitian curve has the following canonical equation: <M>X_0^{q + 1} +
#!   X_1^{q + 1} + X_2^{q + 1} = 0</M>. The function computes the blocks of the
#!   unital with the help of <C>PGU(3,<A>q</A>)</C> and calls
#!   <C>AU_UnitalByDesignBlocks</C>. The <C>Name</C> of the unital is set as
#!   <C>AU_HermitianAbstractUnital(<A>q</A>)</C>.
DeclareGlobalFunction( "AU_HermitianAbstractUnital" );
