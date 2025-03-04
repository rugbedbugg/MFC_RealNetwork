.class final Lorg/fdroid/database/AppDaoInt$diffAndUpdate$7;
.super Lkotlin/jvm/internal/Lambda;
.source "AppDao.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/AppDaoInt$DefaultImpls;->diffAndUpdate(Lorg/fdroid/database/AppDaoInt;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lorg/fdroid/database/AppDaoInt$diffAndUpdate$7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/fdroid/database/AppDaoInt$diffAndUpdate$7;

    invoke-direct {v0}, Lorg/fdroid/database/AppDaoInt$diffAndUpdate$7;-><init>()V

    sput-object v0, Lorg/fdroid/database/AppDaoInt$diffAndUpdate$7;->INSTANCE:Lorg/fdroid/database/AppDaoInt$diffAndUpdate$7;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/fdroid/database/LocalizedFile;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p1}, Lorg/fdroid/database/LocalizedFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 255
    check-cast p1, Lorg/fdroid/database/LocalizedFile;

    invoke-virtual {p0, p1}, Lorg/fdroid/database/AppDaoInt$diffAndUpdate$7;->invoke(Lorg/fdroid/database/LocalizedFile;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
