.class public abstract Landroidx/compose/ui/text/input/GapBuffer_jvmKt;
.super Ljava/lang/Object;
.source "GapBuffer.jvm.kt"


# direct methods
.method public static final toCharArray(Ljava/lang/String;[CIII)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p3, p4, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method
