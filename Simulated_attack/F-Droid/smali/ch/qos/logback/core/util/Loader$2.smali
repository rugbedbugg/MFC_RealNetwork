.class Lch/qos/logback/core/util/Loader$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/qos/logback/core/util/Loader;->getClassLoaderAsPrivileged(Ljava/lang/Class;)Ljava/lang/ClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$clazz:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lch/qos/logback/core/util/Loader$2;->val$clazz:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/ClassLoader;
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/util/Loader$2;->val$clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lch/qos/logback/core/util/Loader$2;->run()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
