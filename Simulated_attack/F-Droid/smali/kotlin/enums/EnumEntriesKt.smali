.class public abstract Lkotlin/enums/EnumEntriesKt;
.super Ljava/lang/Object;
.source "EnumEntries.kt"


# direct methods
.method public static final enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;
    .locals 1

    const-string v0, "entries"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    invoke-direct {v0, p0}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    return-object v0
.end method
