.class public Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field private static parameters:Ljava/util/Map;

.field public static final sha256_128f:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final sha256_128f_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final sha256_128s:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final sha256_128s_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final sha256_192f:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final sha256_192f_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final sha256_192s:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final sha256_192s_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final sha256_256f:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final sha256_256f_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final sha256_256s:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final sha256_256s_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final shake256_128f:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final shake256_128f_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final shake256_128s:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final shake256_128s_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final shake256_192f:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final shake256_192f_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final shake256_192s:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final shake256_192s_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final shake256_256f:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final shake256_256f_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final shake256_256s:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final shake256_256s_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    const-string v1, "sha256-128f-robust"

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->sha256_128f:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    const-string v2, "sha256-128s-robust"

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->sha256_128s:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v2, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    const-string v3, "sha256-192f-robust"

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->sha256_192f:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v3, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    const-string v4, "sha256-192s-robust"

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v3, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->sha256_192s:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v4, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    const-string v5, "sha256-256f-robust"

    invoke-direct {v4, v5}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v4, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->sha256_256f:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    const-string v6, "sha256-256s-robust"

    invoke-direct {v5, v6}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v5, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->sha256_256s:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v6, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    const-string v7, "sha256-128s-simple"

    invoke-direct {v6, v7}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v6, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->sha256_128f_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v7, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    const-string v8, "sha256-128f-simple"

    invoke-direct {v7, v8}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v7, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->sha256_128s_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v8, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    const-string v9, "sha256-192f-simple"

    invoke-direct {v8, v9}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v8, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->sha256_192f_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v9, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    const-string v10, "sha256-192s-simple"

    invoke-direct {v9, v10}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v9, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->sha256_192s_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v10, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    const-string v11, "sha256-256f-simple"

    invoke-direct {v10, v11}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v10, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->sha256_256f_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v11, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    const-string v12, "sha256-256s-simple"

    invoke-direct {v11, v12}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v11, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->sha256_256s_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v12, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    const-string v13, "shake256-128f-robust"

    invoke-direct {v12, v13}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v12, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->shake256_128f:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v13, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    const-string v14, "shake256-128s-robust"

    invoke-direct {v13, v14}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v13, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->shake256_128s:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v14, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    const-string v15, "shake256-192f-robust"

    invoke-direct {v14, v15}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v14, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->shake256_192f:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v15, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v16, v14

    const-string v14, "shake256-192s-robust"

    invoke-direct {v15, v14}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v15, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->shake256_192s:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v14, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v17, v15

    const-string v15, "shake256-256f-robust"

    invoke-direct {v14, v15}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v14, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->shake256_256f:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v15, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v18, v14

    const-string v14, "shake256-256s-robust"

    invoke-direct {v15, v14}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v15, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->shake256_256s:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v14, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v19, v15

    const-string v15, "shake256-128f-simple"

    invoke-direct {v14, v15}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v14, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->shake256_128f_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v15, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v20, v14

    const-string v14, "shake256-128s-simple"

    invoke-direct {v15, v14}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v15, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->shake256_128s_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v14, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v21, v15

    const-string v15, "shake256-192f-simple"

    invoke-direct {v14, v15}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v14, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->shake256_192f_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v15, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v22, v14

    const-string v14, "shake256-192s-simple"

    invoke-direct {v15, v14}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v15, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->shake256_192s_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v14, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v23, v15

    const-string v15, "shake256-256f-simple"

    invoke-direct {v14, v15}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v14, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->shake256_256f_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v15, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v24, v14

    const-string v14, "shake256-256s-simple"

    invoke-direct {v15, v14}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v15, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->shake256_256s_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    sput-object v14, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    move-object/from16 v25, v15

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v20 .. v20}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v21 .. v21}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v22 .. v22}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v23 .. v23}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v24 .. v24}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v25 .. v25}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->name:Ljava/lang/String;

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;
    .locals 1

    .line 0
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method
