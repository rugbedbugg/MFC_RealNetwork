.class public Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;
.super Ljava/lang/Object;


# static fields
.field private static final oidToParams:Ljava/util/Map;

.field private static final paramsToOid:Ljava/util/Map;

.field public static final sha256_128f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha256_128f_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha256_128s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha256_128s_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha256_192f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha256_192f_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha256_192s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha256_192s_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha256_256f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha256_256f_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha256_256s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha256_256s_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake256_128f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake256_128f_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake256_128s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake256_128s_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake256_192f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake256_192f_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake256_192s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake256_192s_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake256_256f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake256_256f_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake256_256s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake256_256s_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field private static final sphincsPlus_sha256_128f_robust:Ljava/lang/Integer;

.field private static final sphincsPlus_sha256_128f_simple:Ljava/lang/Integer;

.field private static final sphincsPlus_sha256_128s_robust:Ljava/lang/Integer;

.field private static final sphincsPlus_sha256_128s_simple:Ljava/lang/Integer;

.field private static final sphincsPlus_sha256_192f_robust:Ljava/lang/Integer;

.field private static final sphincsPlus_sha256_192f_simple:Ljava/lang/Integer;

.field private static final sphincsPlus_sha256_192s_robust:Ljava/lang/Integer;

.field private static final sphincsPlus_sha256_192s_simple:Ljava/lang/Integer;

.field private static final sphincsPlus_sha256_256f_robust:Ljava/lang/Integer;

.field private static final sphincsPlus_sha256_256f_simple:Ljava/lang/Integer;

.field private static final sphincsPlus_sha256_256s_robust:Ljava/lang/Integer;

.field private static final sphincsPlus_sha256_256s_simple:Ljava/lang/Integer;

.field private static final sphincsPlus_shake256_128f_robust:Ljava/lang/Integer;

.field private static final sphincsPlus_shake256_128f_simple:Ljava/lang/Integer;

.field private static final sphincsPlus_shake256_128s_robust:Ljava/lang/Integer;

.field private static final sphincsPlus_shake256_128s_simple:Ljava/lang/Integer;

.field private static final sphincsPlus_shake256_192f_robust:Ljava/lang/Integer;

.field private static final sphincsPlus_shake256_192f_simple:Ljava/lang/Integer;

.field private static final sphincsPlus_shake256_192s_robust:Ljava/lang/Integer;

.field private static final sphincsPlus_shake256_192s_simple:Ljava/lang/Integer;

.field private static final sphincsPlus_shake256_256f_robust:Ljava/lang/Integer;

.field private static final sphincsPlus_shake256_256f_simple:Ljava/lang/Integer;

.field private static final sphincsPlus_shake256_256s_robust:Ljava/lang/Integer;

.field private static final sphincsPlus_shake256_256s_simple:Ljava/lang/Integer;


# instance fields
.field private final engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 52

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;

    const/4 v2, 0x1

    const/16 v3, 0x10

    const/16 v4, 0x10

    const/16 v5, 0x16

    const/4 v6, 0x6

    const/16 v7, 0x21

    const/16 v8, 0x42

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;-><init>(ZIIIIII)V

    const-string v1, "sha256-128f-robust"

    invoke-direct {v0, v1, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha256_128f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v10, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;

    const/4 v3, 0x1

    const/16 v5, 0x10

    const/4 v6, 0x7

    const/16 v7, 0xc

    const/16 v8, 0xe

    const/16 v9, 0x3f

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;-><init>(ZIIIIII)V

    const-string v2, "sha256-128s-robust"

    invoke-direct {v1, v2, v10}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha256_128s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v11, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;

    const/4 v4, 0x1

    const/16 v5, 0x18

    const/16 v6, 0x10

    const/16 v7, 0x16

    const/16 v8, 0x8

    const/16 v9, 0x21

    const/16 v10, 0x42

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;-><init>(ZIIIIII)V

    const-string v3, "sha256-192f-robust"

    invoke-direct {v2, v3, v11}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha256_192f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v12, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;

    const/4 v5, 0x1

    const/16 v6, 0x18

    const/16 v7, 0x10

    const/4 v8, 0x7

    const/16 v9, 0xe

    const/16 v10, 0x11

    const/16 v11, 0x3f

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;-><init>(ZIIIIII)V

    const-string v4, "sha256-192s-robust"

    invoke-direct {v3, v4, v12}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha256_192s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v13, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;

    const/4 v6, 0x1

    const/16 v7, 0x20

    const/16 v8, 0x10

    const/16 v9, 0x11

    const/16 v10, 0x9

    const/16 v11, 0x23

    const/16 v12, 0x44

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;-><init>(ZIIIIII)V

    const-string v5, "sha256-256f-robust"

    invoke-direct {v4, v5, v13}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha256_256f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v5, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v14, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;

    const/4 v7, 0x1

    const/16 v8, 0x20

    const/16 v9, 0x10

    const/16 v10, 0x8

    const/16 v11, 0xe

    const/16 v12, 0x16

    const/16 v13, 0x40

    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;-><init>(ZIIIIII)V

    const-string v6, "sha256-256s-robust"

    invoke-direct {v5, v6, v14}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v5, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha256_256s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v15, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;

    const/4 v8, 0x0

    const/16 v10, 0x10

    const/16 v11, 0x16

    const/4 v12, 0x6

    const/16 v13, 0x21

    const/16 v14, 0x42

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;-><init>(ZIIIIII)V

    const-string v7, "sha256-128f-simple"

    invoke-direct {v6, v7, v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha256_128f_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v15, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;

    const/4 v9, 0x0

    const/16 v11, 0x10

    const/4 v12, 0x7

    const/16 v13, 0xc

    const/16 v14, 0xe

    const/16 v16, 0x3f

    move-object v8, v15

    move-object/from16 v17, v6

    move-object v6, v15

    move/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;-><init>(ZIIIIII)V

    const-string v8, "sha256-128s-simple"

    invoke-direct {v7, v8, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha256_128s_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v15, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;

    const/16 v10, 0x18

    const/16 v12, 0x16

    const/16 v13, 0x8

    const/16 v14, 0x21

    const/16 v16, 0x42

    move-object v8, v15

    move-object/from16 v18, v7

    move-object v7, v15

    move/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;-><init>(ZIIIIII)V

    const-string v8, "sha256-192f-simple"

    invoke-direct {v6, v8, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha256_192f_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v15, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;

    const/4 v12, 0x7

    const/16 v13, 0xe

    const/16 v14, 0x11

    const/16 v16, 0x3f

    move-object v8, v15

    move-object/from16 v19, v6

    move-object v6, v15

    move/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;-><init>(ZIIIIII)V

    const-string v8, "sha256-192s-simple"

    invoke-direct {v7, v8, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha256_192s_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v15, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;

    const/16 v10, 0x20

    const/16 v12, 0x11

    const/16 v13, 0x9

    const/16 v14, 0x23

    const/16 v16, 0x44

    move-object v8, v15

    move-object/from16 v20, v7

    move-object v7, v15

    move/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;-><init>(ZIIIIII)V

    const-string v8, "sha256-256f-simple"

    invoke-direct {v6, v8, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha256_256f_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v15, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;

    const/16 v12, 0x8

    const/16 v13, 0xe

    const/16 v14, 0x16

    const/16 v16, 0x40

    move-object v8, v15

    move-object/from16 v21, v6

    move-object v6, v15

    move/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;-><init>(ZIIIIII)V

    const-string v8, "sha256-256s-simple"

    invoke-direct {v7, v8, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha256_256s_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v15, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;

    const/4 v9, 0x1

    const/16 v10, 0x10

    const/16 v12, 0x16

    const/4 v13, 0x6

    const/16 v14, 0x21

    const/16 v16, 0x42

    move-object v8, v15

    move-object/from16 v22, v7

    move-object v7, v15

    move/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;-><init>(ZIIIIII)V

    const-string v8, "shake256-128f-robust"

    invoke-direct {v6, v8, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake256_128f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v15, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;

    const/4 v12, 0x7

    const/16 v13, 0xc

    const/16 v14, 0xe

    const/16 v16, 0x3f

    move-object v8, v15

    move-object/from16 v23, v6

    move-object v6, v15

    move/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;-><init>(ZIIIIII)V

    const-string v8, "shake256-128s-robust"

    invoke-direct {v7, v8, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake256_128s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v15, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;

    const/16 v10, 0x18

    const/16 v12, 0x16

    const/16 v13, 0x8

    const/16 v14, 0x21

    const/16 v16, 0x42

    move-object v8, v15

    move-object/from16 v24, v7

    move-object v7, v15

    move/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;-><init>(ZIIIIII)V

    const-string v8, "shake256-192f-robust"

    invoke-direct {v6, v8, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake256_192f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v15, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;

    const/4 v12, 0x7

    const/16 v13, 0xe

    const/16 v14, 0x11

    const/16 v16, 0x3f

    move-object v8, v15

    move-object/from16 v25, v6

    move-object v6, v15

    move/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;-><init>(ZIIIIII)V

    const-string v8, "shake256-192s-robust"

    invoke-direct {v7, v8, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake256_192s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v15, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;

    const/16 v10, 0x20

    const/16 v12, 0x11

    const/16 v13, 0x9

    const/16 v14, 0x23

    const/16 v16, 0x44

    move-object v8, v15

    move-object/from16 v26, v7

    move-object v7, v15

    move/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;-><init>(ZIIIIII)V

    const-string v8, "shake256-256f-robust"

    invoke-direct {v6, v8, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake256_256f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v15, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;

    const/16 v12, 0x8

    const/16 v13, 0xe

    const/16 v14, 0x16

    const/16 v16, 0x40

    move-object v8, v15

    move-object/from16 v27, v6

    move-object v6, v15

    move/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;-><init>(ZIIIIII)V

    const-string v8, "shake256-256s-robust"

    invoke-direct {v7, v8, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake256_256s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v15, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;

    const/4 v9, 0x0

    const/16 v10, 0x10

    const/16 v12, 0x16

    const/4 v13, 0x6

    const/16 v14, 0x21

    const/16 v16, 0x42

    move-object v8, v15

    move-object/from16 v28, v7

    move-object v7, v15

    move/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;-><init>(ZIIIIII)V

    const-string v8, "shake256-128f-simple"

    invoke-direct {v6, v8, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake256_128f_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v15, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;

    const/4 v12, 0x7

    const/16 v13, 0xc

    const/16 v14, 0xe

    const/16 v16, 0x3f

    move-object v8, v15

    move-object/from16 v29, v6

    move-object v6, v15

    move/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;-><init>(ZIIIIII)V

    const-string v8, "shake256-128s-simple"

    invoke-direct {v7, v8, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake256_128s_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v15, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;

    const/16 v10, 0x18

    const/16 v12, 0x16

    const/16 v13, 0x8

    const/16 v14, 0x21

    const/16 v16, 0x42

    move-object v8, v15

    move-object/from16 v30, v7

    move-object v7, v15

    move/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;-><init>(ZIIIIII)V

    const-string v8, "shake256-192f-simple"

    invoke-direct {v6, v8, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake256_192f_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v15, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;

    const/4 v12, 0x7

    const/16 v13, 0xe

    const/16 v14, 0x11

    const/16 v16, 0x3f

    move-object v8, v15

    move-object/from16 v31, v6

    move-object v6, v15

    move/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;-><init>(ZIIIIII)V

    const-string v8, "shake256-192s-simple"

    invoke-direct {v7, v8, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake256_192s_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v15, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;

    const/16 v10, 0x20

    const/16 v12, 0x11

    const/16 v13, 0x9

    const/16 v14, 0x23

    const/16 v16, 0x44

    move-object v8, v15

    move-object/from16 v32, v7

    move-object v7, v15

    move/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;-><init>(ZIIIIII)V

    const-string v8, "shake256-256f-simple"

    invoke-direct {v6, v8, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake256_256f_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v15, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;

    const/16 v12, 0x8

    const/16 v13, 0xe

    const/16 v14, 0x16

    const/16 v16, 0x40

    move-object v8, v15

    move-object/from16 v33, v6

    move-object v6, v15

    move/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;-><init>(ZIIIIII)V

    const-string v8, "shake256-256s-simple"

    invoke-direct {v7, v8, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake256_256s_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v6, 0x10101

    invoke-static {v6}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sput-object v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sphincsPlus_sha256_128f_robust:Ljava/lang/Integer;

    const v8, 0x10102

    invoke-static {v8}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sput-object v8, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sphincsPlus_sha256_128s_robust:Ljava/lang/Integer;

    const v9, 0x10103

    invoke-static {v9}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sput-object v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sphincsPlus_sha256_192f_robust:Ljava/lang/Integer;

    const v10, 0x10104

    invoke-static {v10}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sput-object v10, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sphincsPlus_sha256_192s_robust:Ljava/lang/Integer;

    const v11, 0x10105

    invoke-static {v11}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sput-object v11, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sphincsPlus_sha256_256f_robust:Ljava/lang/Integer;

    const v12, 0x10106

    invoke-static {v12}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sput-object v12, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sphincsPlus_sha256_256s_robust:Ljava/lang/Integer;

    const v13, 0x10201

    invoke-static {v13}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    sput-object v13, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sphincsPlus_sha256_128f_simple:Ljava/lang/Integer;

    const v14, 0x10202

    invoke-static {v14}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    sput-object v14, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sphincsPlus_sha256_128s_simple:Ljava/lang/Integer;

    const v15, 0x10203

    invoke-static {v15}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sput-object v15, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sphincsPlus_sha256_192f_simple:Ljava/lang/Integer;

    const v16, 0x10204

    move-object/from16 v34, v7

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sphincsPlus_sha256_192s_simple:Ljava/lang/Integer;

    const v16, 0x10205

    move-object/from16 v35, v7

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sphincsPlus_sha256_256f_simple:Ljava/lang/Integer;

    const v16, 0x10206

    move-object/from16 v36, v7

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sphincsPlus_sha256_256s_simple:Ljava/lang/Integer;

    const v16, 0x20101

    move-object/from16 v37, v7

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sphincsPlus_shake256_128f_robust:Ljava/lang/Integer;

    const v16, 0x20102

    move-object/from16 v38, v7

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sphincsPlus_shake256_128s_robust:Ljava/lang/Integer;

    const v16, 0x20103

    move-object/from16 v39, v7

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sphincsPlus_shake256_192f_robust:Ljava/lang/Integer;

    const v16, 0x20104

    move-object/from16 v40, v7

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sphincsPlus_shake256_192s_robust:Ljava/lang/Integer;

    const v16, 0x20105

    move-object/from16 v41, v7

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sphincsPlus_shake256_256f_robust:Ljava/lang/Integer;

    const v16, 0x20106

    move-object/from16 v42, v7

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sphincsPlus_shake256_256s_robust:Ljava/lang/Integer;

    const v16, 0x20201

    move-object/from16 v43, v7

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sphincsPlus_shake256_128f_simple:Ljava/lang/Integer;

    const v16, 0x20202

    move-object/from16 v44, v7

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sphincsPlus_shake256_128s_simple:Ljava/lang/Integer;

    const v16, 0x20203

    move-object/from16 v45, v7

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sphincsPlus_shake256_192f_simple:Ljava/lang/Integer;

    const v16, 0x20204

    move-object/from16 v46, v7

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sphincsPlus_shake256_192s_simple:Ljava/lang/Integer;

    const v16, 0x20205

    move-object/from16 v47, v7

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sphincsPlus_shake256_256f_simple:Ljava/lang/Integer;

    const v16, 0x20206

    move-object/from16 v48, v7

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sphincsPlus_shake256_256s_simple:Ljava/lang/Integer;

    move-object/from16 v16, v7

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->oidToParams:Ljava/util/Map;

    move-object/from16 v49, v15

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    sput-object v15, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->paramsToOid:Ljava/util/Map;

    invoke-interface {v7, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v50, v5

    move-object/from16 v5, v17

    invoke-interface {v7, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v18

    invoke-interface {v7, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v19

    move-object/from16 v19, v14

    move-object/from16 v14, v49

    invoke-interface {v7, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v49, v5

    move-object/from16 v5, v20

    move-object/from16 v20, v14

    move-object/from16 v14, v35

    invoke-interface {v7, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v35, v5

    move-object/from16 v5, v21

    move-object/from16 v21, v14

    move-object/from16 v14, v36

    invoke-interface {v7, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v36, v5

    move-object/from16 v5, v22

    move-object/from16 v22, v14

    move-object/from16 v14, v37

    invoke-interface {v7, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v37, v5

    move-object/from16 v5, v23

    move-object/from16 v23, v14

    move-object/from16 v14, v38

    invoke-interface {v7, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v38, v5

    move-object/from16 v5, v24

    move-object/from16 v24, v14

    move-object/from16 v14, v39

    invoke-interface {v7, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v39, v5

    move-object/from16 v5, v25

    move-object/from16 v25, v14

    move-object/from16 v14, v40

    invoke-interface {v7, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v40, v5

    move-object/from16 v5, v26

    move-object/from16 v26, v14

    move-object/from16 v14, v41

    invoke-interface {v7, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v41, v5

    move-object/from16 v5, v27

    move-object/from16 v27, v14

    move-object/from16 v14, v42

    invoke-interface {v7, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v42, v5

    move-object/from16 v5, v28

    move-object/from16 v28, v14

    move-object/from16 v14, v43

    invoke-interface {v7, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v43, v5

    move-object/from16 v5, v29

    move-object/from16 v29, v14

    move-object/from16 v14, v44

    invoke-interface {v7, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v44, v5

    move-object/from16 v5, v30

    move-object/from16 v30, v14

    move-object/from16 v14, v45

    invoke-interface {v7, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v45, v5

    move-object/from16 v5, v31

    move-object/from16 v31, v14

    move-object/from16 v14, v46

    invoke-interface {v7, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v46, v5

    move-object/from16 v5, v32

    move-object/from16 v32, v14

    move-object/from16 v14, v47

    invoke-interface {v7, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v47, v5

    move-object/from16 v5, v33

    move-object/from16 v33, v14

    move-object/from16 v14, v48

    invoke-interface {v7, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v48, v5

    move-object/from16 v5, v34

    move-object/from16 v51, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v51

    invoke-interface {v7, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v15, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v15, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v15, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v15, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v15, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v50

    invoke-interface {v15, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-interface {v15, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v20

    move-object/from16 v0, v49

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v21

    move-object/from16 v0, v35

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v22

    move-object/from16 v0, v36

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v23

    move-object/from16 v0, v37

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v24

    move-object/from16 v0, v38

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v25

    move-object/from16 v0, v39

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v26

    move-object/from16 v0, v40

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v27

    move-object/from16 v0, v41

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v28

    move-object/from16 v0, v42

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v29

    move-object/from16 v0, v43

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v30

    move-object/from16 v0, v44

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v31

    move-object/from16 v0, v45

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v32

    move-object/from16 v0, v46

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v33

    move-object/from16 v0, v47

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v16

    move-object/from16 v0, v48

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v15, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    return-void
.end method

.method public static getID(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;)Ljava/lang/Integer;
    .locals 1

    .line 0
    sget-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->paramsToOid:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public static getParams(Ljava/lang/Integer;)Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;
    .locals 1

    .line 0
    sget-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->oidToParams:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    return-object p0
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->getID(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I)[B

    move-result-object v0

    return-object v0
.end method

.method getEngine()Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->name:Ljava/lang/String;

    return-object v0
.end method
