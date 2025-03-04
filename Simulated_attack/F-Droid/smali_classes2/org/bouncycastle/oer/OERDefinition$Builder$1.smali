.class Lorg/bouncycastle/oer/OERDefinition$Builder$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/oer/OERDefinition$ItemProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/OERDefinition$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/oer/OERDefinition$Builder;


# direct methods
.method constructor <init>(Lorg/bouncycastle/oer/OERDefinition$Builder;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder$1;->this$0:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public existingChild(ILorg/bouncycastle/oer/OERDefinition$Builder;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 0

    .line 0
    iget-object p1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder$1;->this$0:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-static {p1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->access$000(Lorg/bouncycastle/oer/OERDefinition$Builder;)Lorg/bouncycastle/oer/OERDefinition$ItemProvider;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->access$100(Lorg/bouncycastle/oer/OERDefinition$Builder;Lorg/bouncycastle/oer/OERDefinition$ItemProvider;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p1

    return-object p1
.end method
