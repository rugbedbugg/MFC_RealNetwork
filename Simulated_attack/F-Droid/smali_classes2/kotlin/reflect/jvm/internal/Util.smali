.class abstract Lkotlin/reflect/jvm/internal/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public static getEnumConstantByName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-static {p0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    return-object p0
.end method
