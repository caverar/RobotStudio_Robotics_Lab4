MODULE Module1
    CONST robtarget HPickBoxA:=[[100,-100,210],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PickBoxA:=[[0,0,0],[0,0.923879532,0.382683434,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Home:=[[665.640325542,0,587.5],[0.5,0,0.866025404,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PickBoxC_2:=[[0,250,210],[0,-0.382683433,0.923879532,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PickBoxC:=[[0,250,0],[0,-0.382683433,0.923879532,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget HpickBoxE:=[[-300,300,210],[0,0.923879532,0.382683433,0],[0,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PickBoxE:=[[-250,250,0],[-0.000000001,0.923879532,0.382683433,0],[0,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget HPlaceP1:=[[326.099,15.996,24.976],[0.000000001,0.382683432,0.923879533,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PlaceP1:=[[260,0,-210],[0,0.382683432,0.923879533,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget HPlaceP2:=[[260,-260,0],[0.353553391,0.35355339,0.85355339,-0.146446609],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PlaceP2:=[[260,-260,-210],[0,0.382683432,0.923879533,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget HPlaceP4:=[[0,-260,0],[0.000000001,0.382683432,0.923879533,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PlaceP4:=[[0,-260,-210],[0.000000001,0.382683432,0.923879533,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget HPlaceP3:=[[0,0,0],[0.000000001,0.382683432,0.923879533,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PlaceP3:=[[0,0,-210],[0,0.382683432,0.923879533,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget HPlaceP6:=[[-260,-260,0],[-0.000000001,0.923879532,0.382683433,0],[-2,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PlaceP6:=[[-260,-260,-210],[-0.000000001,0.923879532,0.382683433,0],[-2,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget HPlaceP5:=[[-260,0,0],[0,0.923879532,0.382683433,0],[-2,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PlaceP5:=[[-260,0,-210],[0,0.923879532,0.382683433,0],[-2,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST bool objectSelected := FALSE;
    CONST dionum s := 0;
    CONST dionum p := 0;
    CONST robtarget H1:=[[110.376,102.322,301.967],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Pick1:=[[107.436,99.209,200],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PickBoxC_3:=[[0,250,210],[0,-0.382683433,0.923879532,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
PROC PathPickBoxA()
        MoveL HPickBoxA,v1000,z100,TCPVentosaTool\WObj:=WO_Pick;
        MoveL PickBoxA,v500,fine,TCPVentosaTool\WObj:=WO_Pick;
        SETDO DO_Ventosa, 0;
        RESET DO_Ventosa;
        WaitTime 1;
        MoveL HPickBoxA,v1000,z100,TCPVentosaTool\WObj:=WO_Pick;
        MoveL Home,v1000,z100,TCPVentosaTool\WObj:=wobj0;
    ENDPROC
    PROC PathPickBoxC()
        MoveL Home,v1000,z100,TCPVentosaTool\WObj:=wobj0;
        MoveL PickBoxC_3,v1000,z100,TCPVentosaTool\WObj:=WO_Pick;
        MoveL PickBoxC,v300,fine,TCPVentosaTool\WObj:=WO_Pick;
        SETDO DO_Ventosa, 0;
        RESET DO_Ventosa;
        MoveL PickBoxC_3,v1000,z100,TCPVentosaTool\WObj:=WO_Pick;
        MoveL Home,v1000,z100,TCPVentosaTool\WObj:=wobj0;
    ENDPROC
    PROC PathPickBoxE()
        MoveL HpickBoxE,v1000,z100,TCPVentosaTool\WObj:=WO_Pick;
        MoveL PickBoxE,v500,fine,TCPVentosaTool\WObj:=WO_Pick;
        SETDO DO_Ventosa, 0;
        RESET DO_Ventosa;
        WaitTime 1;
        MoveL HpickBoxE,v1000,z100,TCPVentosaTool\WObj:=WO_Pick;
        MoveL Home,v1000,z100,TCPVentosaTool\WObj:=wobj0;
    ENDPROC
    PROC PathPlaceP1()
        MoveL HPlaceP1,v1000,z10,TCPVentosaTool\WObj:=WO_Place;
        MoveL PlaceP1,v300,fine,TCPVentosaTool\WObj:=WO_Place;
        SETDO DO_Ventosa, 1;
        RESET DO_Ventosa;
        WaitTime 1;
        MoveL HPlaceP1,v1000,z100,TCPVentosaTool\WObj:=WO_Place;
        MoveL Home,v1000,z100,TCPVentosaTool\WObj:=wobj0;
    ENDPROC
    PROC PathPlaceP2()
        MoveL HPlaceP2,v1000,z5,TCPVentosaTool\WObj:=WO_Place;
        MoveL PlaceP2,v300,fine,TCPVentosaTool\WObj:=WO_Place;
        SETDO DO_Ventosa, 1;
        RESET DO_Ventosa;
        WaitTime 1;
        MoveL HPlaceP2,v1000,z100,TCPVentosaTool\WObj:=WO_Place;
        MoveL Home,v1000,z100,TCPVentosaTool\WObj:=wobj0;
    ENDPROC
    PROC PathPlaceP4()
        MoveL HPlaceP4,v1000,z5,TCPVentosaTool\WObj:=WO_Place;
        MoveL PlaceP4,v300,fine,TCPVentosaTool\WObj:=WO_Place;
        SETDO DO_Ventosa, 1;
        RESET DO_Ventosa;
        WaitTime 1;
        MoveL HPlaceP4,v1000,z100,TCPVentosaTool\WObj:=WO_Place;
        MoveL Home,v1000,z100,TCPVentosaTool\WObj:=wobj0;
    ENDPROC
    PROC PathPlaceP3()
        MoveL HPlaceP3,v1000,z5,TCPVentosaTool\WObj:=WO_Place;
        MoveL PlaceP3,v300,fine,TCPVentosaTool\WObj:=WO_Place;
        SETDO DO_Ventosa, 1;
        RESET DO_Ventosa;
        WaitTime 1;
        MoveL HPlaceP3,v1000,z100,TCPVentosaTool\WObj:=WO_Place;
        MoveL Home,v1000,z100,TCPVentosaTool\WObj:=wobj0;
    ENDPROC
    PROC PathPlaceP6()
        MoveL HPlaceP6,v1000,z5,TCPVentosaTool\WObj:=WO_Place;
        MoveL PlaceP6,v300,fine,TCPVentosaTool\WObj:=WO_Place;
        SETDO DO_Ventosa, 1;
        RESET DO_Ventosa;
        WaitTime 1;
        MoveL HPlaceP6,v1000,z100,TCPVentosaTool\WObj:=WO_Place;
        MoveL Home,v1000,z100,TCPVentosaTool\WObj:=wobj0;
    ENDPROC
    PROC PathPlaceP5()
        MoveL HPlaceP5,v1000,z5,TCPVentosaTool\WObj:=WO_Place;
        MoveL PlaceP5,v300,fine,TCPVentosaTool\WObj:=WO_Place;
        SETDO DO_Ventosa, 1;
        RESET DO_Ventosa;
        WaitTime 1;
        MoveL HPlaceP5,v1000,z100,TCPVentosaTool\WObj:=WO_Place;
        MoveL Home,v1000,z100,TCPVentosaTool\WObj:=wobj0;
    ENDPROC
    PROC main()
        MoveL Home,v1000,z100,TCPVentosaTool\WObj:=wobj0;
        
        WHILE TRUE DO
            IF DI_01=1 THEN
                PathPickBoxA;                
            ELSEIF DI_02=1 THEN
                PathPickBoxC; 
            ELSEIF DI_03=1 THEN
                PathPickBoxE; 
            ENDIF
            IF DI_04=1 THEN
                PathPlaceP1;                
            ELSEIF DI_05=1 THEN
                PathPlaceP2;
            ELSEIF DI_06=1 THEN
                PathPlaceP3;
            ELSEIF DI_07=1 THEN
                PathPlaceP4;
            ELSEIF DI_08=1 THEN
                PathPlaceP5;
            ELSEIF DI_09=1 THEN
                PathPlaceP6;
            ENDIF
            
        ENDWHILE

    ENDPROC
 
    
ENDMODULE