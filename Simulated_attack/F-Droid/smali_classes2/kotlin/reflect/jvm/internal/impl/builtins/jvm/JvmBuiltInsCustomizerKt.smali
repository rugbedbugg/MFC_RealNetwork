.class public abstract Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizerKt;
.super Ljava/lang/Object;
.source "JvmBuiltInsCustomizer.kt"


# static fields
.field private static final GET_FIRST_LIST_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field private static final GET_LAST_LIST_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "getFirst"

    .line 374
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    const-string v1, "identifier(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizerKt;->GET_FIRST_LIST_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v0, "getLast"

    .line 375
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizerKt;->GET_LAST_LIST_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

    return-void
.end method

.method public static final synthetic access$getGET_FIRST_LIST_NAME$p()Lkotlin/reflect/jvm/internal/impl/name/Name;
    .locals 1

    .line 0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizerKt;->GET_FIRST_LIST_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

    return-object v0
.end method

.method public static final synthetic access$getGET_LAST_LIST_NAME$p()Lkotlin/reflect/jvm/internal/impl/name/Name;
    .locals 1

    .line 0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizerKt;->GET_LAST_LIST_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

    return-object v0
.end method
