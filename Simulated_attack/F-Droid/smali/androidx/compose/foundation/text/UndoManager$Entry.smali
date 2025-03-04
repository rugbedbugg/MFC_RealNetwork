.class final Landroidx/compose/foundation/text/UndoManager$Entry;
.super Ljava/lang/Object;
.source "UndoManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/text/UndoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field private next:Landroidx/compose/foundation/text/UndoManager$Entry;

.field private value:Landroidx/compose/ui/text/input/TextFieldValue;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/UndoManager$Entry;Landroidx/compose/ui/text/input/TextFieldValue;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/UndoManager$Entry;->next:Landroidx/compose/foundation/text/UndoManager$Entry;

    iput-object p2, p0, Landroidx/compose/foundation/text/UndoManager$Entry;->value:Landroidx/compose/ui/text/input/TextFieldValue;

    return-void
.end method


# virtual methods
.method public final getNext()Landroidx/compose/foundation/text/UndoManager$Entry;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/text/UndoManager$Entry;->next:Landroidx/compose/foundation/text/UndoManager$Entry;

    return-object v0
.end method

.method public final getValue()Landroidx/compose/ui/text/input/TextFieldValue;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/text/UndoManager$Entry;->value:Landroidx/compose/ui/text/input/TextFieldValue;

    return-object v0
.end method

.method public final setNext(Landroidx/compose/foundation/text/UndoManager$Entry;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/text/UndoManager$Entry;->next:Landroidx/compose/foundation/text/UndoManager$Entry;

    return-void
.end method

.method public final setValue(Landroidx/compose/ui/text/input/TextFieldValue;)V
    .locals 1

    .line 0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/foundation/text/UndoManager$Entry;->value:Landroidx/compose/ui/text/input/TextFieldValue;

    return-void
.end method
