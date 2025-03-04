.class abstract Lcom/google/android/material/datepicker/PickerFragment;
.super Landroidx/fragment/app/Fragment;
.source "PickerFragment.java"


# instance fields
.field protected final onSelectionChangedListeners:Ljava/util/LinkedHashSet;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 23
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/datepicker/PickerFragment;->onSelectionChangedListeners:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method addOnSelectionChangedListener(Lcom/google/android/material/datepicker/OnSelectionChangedListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/PickerFragment;->onSelectionChangedListeners:Ljava/util/LinkedHashSet;

    .line 30
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method clearOnSelectionChangedListeners()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/PickerFragment;->onSelectionChangedListeners:Ljava/util/LinkedHashSet;

    .line 40
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    return-void
.end method
